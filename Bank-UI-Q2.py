import psycopg2
import matplotlib as mpl
import matplotlib.patches as patches
from matplotlib import pyplot as plt

DB_NAME = "Bank"
DB_USER = "postgres"
DB_PASS = "postgres"
DB_HOST = "localhost"
DB_PORT = "5433"

conn = psycopg2.connect(dbname=DB_NAME, user=DB_USER,
                        password=DB_PASS, host=DB_HOST, port=DB_PORT)
cur = conn.cursor()
postgreSQL_select_function1 = "SELECT * FROM find_src('1234', 1240, 1250, 100000,'2023-01-01', '113008');"
postgreSQL_select_function2 = "SELECT * FROM find_des('1234', 1240, 1250, 100000,'2023-01-01', '113008');"
postgreSQL_select_query = "SELECT * FROM result_table"
cur.execute(postgreSQL_select_function1)
cur.execute(postgreSQL_select_function2)
cur.execute(postgreSQL_select_query)
records = cur.fetchall()
print(records)

fig, ax = plt.subplots(figsize=(10, 8))
fig.set_facecolor("black")
rows = 8
cols = 6
ax.set_ylim(-2, rows + 1)
ax.set_xlim(0, cols + .5)

for row in range(rows):
    ax.text(x=0.85, y=row, s=records[row][0],
            va='center', ha='left', color='lightpink')
    ax.text(x=3.25, y=row, s=records[row][1],
            va='center', ha='right', color='lightpink')
    ax.text(x=5.5, y=row, s=records[row][2],
            va='center', ha='right', color='lightpink')

ax.text(0.5, 8, 'deposit ID', weight='bold', ha='left',
        size='x-large', color='paleturquoise')
ax.text(2, 8, 'source or destination', weight='bold', ha='left',
        size='x-large',  color='paleturquoise')
ax.text(5, 8, 'amount', weight='bold', ha='left',
        size='x-large',  color='paleturquoise')

for row in range(rows):
    ax.plot(
        [0, cols + 1],
        [row - .5, row - .5],
        ls=':',
        lw='.5',
        c='grey'
    )
ax.plot([0, cols + 1], [7.75, 7.75], lw='.5', c='paleturquoise')
ax.axis('off')
ax.set_title(
    'Sources And Destinations Of The Amount Of Money',
    loc='center',
    fontsize=18,
    weight='bold',
    color='paleturquoise'
)

plt.show()
