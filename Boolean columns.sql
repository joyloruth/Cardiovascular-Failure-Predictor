select diabetic, count(diabetic)
from clinical_records
group by diabetic;

# diabetic	count(diabetic)
# 0	174
#	1	125


select hypertensive, count(hypertensive)
from clinical_records
group by hypertensive;

# hypertensive	count(hypertensive)
# 1	105
#	0	194


select anemic, count(anemic)
from clinical_records
group by anemic;

# anemic	count(anemic)
# 0	170
# 1	129


select smoker, count(smoker)
from clinical_records
group by smoker;

#	smoker	count(smoker)
# 0	203
# 1	96

select sex, count(sex)
from clinical_records
group by sex;

# sex	count(sex)
# 1	194
# 0	105

select deceased, count(deceased)
from clinical_records
group by deceased;

#	deceased	count(deceased)
# 1	96
# 0	203

