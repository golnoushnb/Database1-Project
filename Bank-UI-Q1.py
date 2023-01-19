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
postgreSQL_select_view = "select * from check_natcode"
cur.execute(postgreSQL_select_view)
records = cur.fetchall()
print(records)


fig, ax = plt.subplots(figsize=(12, 8))
fig.set_facecolor("black")
rows = 12
cols = 10
ax.set_ylim(-2, rows + 1)
ax.set_xlim(0, cols + .5)


for row in range(rows):
    ax.text(x=0.5, y=row, s=records[row][0],
            va='center', ha='left', color='lightpink')
    ax.text(x=2.5, y=row, s=records[row][1],
            va='center', ha='right', color='lightpink')
    ax.text(x=4.25, y=row, s=records[row][2],
            va='center', ha='right', weight='bold', color='lightpink')
    ax.text(x=5.75, y=row, s=records[row]
            [3], va='center', ha='right', color='lightpink')
    ax.text(x=7, y=row, s=records[row][4],
            va='center', ha='right', color='lightpink')
    ax.text(x=8.65, y=row, s=records[row]
            [5], va='center', ha='right', color='lightpink')
    ax.text(x=9.8, y=row, s=records[row][6],
            va='center', ha='right',  weight='bold', color='lightpink')
ax.text(0.5, 12, 'ID', weight='bold', ha='left',
        size='x-large', color='paleturquoise')
ax.text(1.6, 12, 'Name', weight='bold', ha='left',
        size='x-large',  color='paleturquoise')
ax.text(3.5, 12, 'NI', weight='bold', ha='left',
        size='x-large',  color='paleturquoise')
ax.text(4.65, 12, 'Birthdate', weight='bold',
        ha='left', size='x-large',  color='paleturquoise')
ax.text(6.15, 12, 'Address', weight='bold',
        ha='left', size='x-large',  color='paleturquoise')
ax.text(7.4, 12, 'Telephone', weight='bold',
        ha='left', size='x-large',  color='paleturquoise')
ax.text(8.9, 12, 'Check NI', weight='bold',
        ha='left', size='x-large',  color='paleturquoise')
for row in range(rows):
    ax.plot(
        [0, cols + 1],
        [row - .5, row - .5],
        ls=':',
        lw='.5',
        c='grey'
    )
ax.plot([0, cols + 1], [11.75, 11.75], lw='.5', c='paleturquoise')
rect1 = patches.Rectangle(
    (8.925, -.5),

    1.2,

    12.2,

    ec='none',
    fc='grey',
    alpha=.2,
    zorder=-1
)
rect2 = patches.Rectangle(
    (3.026, -.5),

    1.4,

    12.2,

    ec='none',
    fc='grey',
    alpha=.2,
    zorder=-1
)
ax.add_patch(rect1)
ax.add_patch(rect2)

ax.axis('off')
ax.set_title(
    'NATIONAL ID VERIFICATION!',
    loc='left',
    fontsize=18,
    weight='bold',
    color='paleturquoise'
)
plt.show()
cur.close()
conn.close()
