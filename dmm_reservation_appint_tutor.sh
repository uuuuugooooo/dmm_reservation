#/bin/bash
YEAR="2022"
MONTH="04"
DAY="13"
START_HOUR="08"
START_TIME="30"
END_HOUR="09"
END_TIME="00"
# パイプ区切り
TUTOR_ID="11111|00000"
curl --silent -k -L "https://eikaiwa.dmm.com/list/?data%5Btab1%5D%5Blesson_language%5D=en&data%5Btab1%5D%5Bstart_time%5D=${START_HOUR}%3A${START_TIME}&data%5Btab1%5D%5Bend_time%5D=${END_HOUR}%3A${END_TIME}&data%5Btab1%5D%5Bstandard_teachers%5D=on&data%5Btab1%5D%5Bcountry%5D=40%2C104%2C78%2C64%2C65%2C112%2C118%2C177%2C5%2C91%2C1%2C102%2C72%2C175%2C49%2C56%2C13%2C43%2C41%2C39%2C28%2C35%2C211%2C70%2C8%2C24%2C69%2C16%2C21%2C53%2C4%2C22%2C9%2C138%2C32%2C27%2C85%2C97%2C52%2C42%2C3%2C14%2C31%2C12%2C93%2C89%2C109%2C80%2C103%2C94%2C101%2C86%2C38%2C214%2C99%2C36%2C83%2C79%2C84%2C124%2C132%2C88%2C29%2C10%2C106%2C98%2C77%2C158%2C140%2C37%2C133%2C204%2C18%2C209%2C120%2C63%2C108%2C134%2C123%2C100%2C44%2C131%2C47%2C62%2C157%2C6%2C117%2C57%2C81%2C128%2C23%2C200%2C17%2C60%2C129%2C59%2C166%2C111%2C174%2C115%2C116%2C113%2C121&data%5Btab1%5D%5Bgender%5D=0&data%5Btab1%5D%5Bage%5D=%E5%B9%B4%E9%BD%A2&data%5Btab1%5D%5Bfree_word%5D=&date=${YEAR}-${MONTH}-${DAY}&tab=0" | egrep teacher | egrep img.eikaiwa.dmm.com | awk -F'data-teacher-id=' '{print $2}' | egrep -v '^$' | awk -F'\"|\<p\ class=\"en_name\"\>|</p>' '{print $2", "$6}' | egrep "${TUTOR_ID}"

if [ $? -eq 0 ]; then
 afplay /System/Library/Sounds/Glass.aiff 
 afplay /System/Library/Sounds/Glass.aiff
 afplay /System/Library/Sounds/Glass.aiff
else
  curl --silent -k -L "https://eikaiwa.dmm.com/list/?data%5Btab1%5D%5Blesson_language%5D=en&data%5Btab1%5D%5Bstart_time%5D=${START_HOUR}%3A${START_TIME}&data%5Btab1%5D%5Bend_time%5D=${END_HOUR}%3A${END_TIME}&data%5Btab1%5D%5Bstandard_teachers%5D=on&data%5Btab1%5D%5Bcountry%5D=40%2C104%2C78%2C64%2C65%2C112%2C118%2C177%2C5%2C91%2C1%2C102%2C72%2C175%2C49%2C56%2C13%2C43%2C41%2C39%2C28%2C35%2C211%2C70%2C8%2C24%2C69%2C16%2C21%2C53%2C4%2C22%2C9%2C138%2C32%2C27%2C85%2C97%2C52%2C42%2C3%2C14%2C31%2C12%2C93%2C89%2C109%2C80%2C103%2C94%2C101%2C86%2C38%2C214%2C99%2C36%2C83%2C79%2C84%2C124%2C132%2C88%2C29%2C10%2C106%2C98%2C77%2C158%2C140%2C37%2C133%2C204%2C18%2C209%2C120%2C63%2C108%2C134%2C123%2C100%2C44%2C131%2C47%2C62%2C157%2C6%2C117%2C57%2C81%2C128%2C23%2C200%2C17%2C60%2C129%2C59%2C166%2C111%2C174%2C115%2C116%2C113%2C121&data%5Btab1%5D%5Bgender%5D=0&data%5Btab1%5D%5Bage%5D=%E5%B9%B4%E9%BD%A2&data%5Btab1%5D%5Bfree_word%5D=&date=${YEAR}-${MONTH}-${DAY}&page=2" | egrep teacher | egrep img.eikaiwa.dmm.com | awk -F'data-teacher-id=' '{print $2}' | egrep -v '^$' | awk -F'\"|\<p\ class=\"en_name\"\>|</p>' '{print $2", "$6}' | egrep "${TUTOR_ID}"
  if [ $? -eq 0 ]; then
     afplay /System/Library/Sounds/Glass.aiff
     afplay /System/Library/Sounds/Glass.aiff
     afplay /System/Library/Sounds/Glass.aiff
  fi
fi

