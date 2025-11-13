USE act_db;

ALTER TABLE EMPLOYEE
MODIFY EMAIL VARCHAR(50) NOT NULL UNIQUE;

UPDATE EMPLOYEE
SET EMAIL = CASE empno
  WHEN '000010' THEN 'christine.haas000010@gmail.com'
  WHEN '000020' THEN 'michael.thompson000020@gmail.com'
  WHEN '000030' THEN 'sally.kwan000030@gmail.com'
  WHEN '000050' THEN 'john.geyer000050@gmail.com'
  WHEN '000060' THEN 'irving.stern000060@gmail.com'
  WHEN '000070' THEN 'eva.pulaski000070@gmail.com'
  WHEN '000090' THEN 'eileen.henderson000090@gmail.com'
  WHEN '000100' THEN 'thoedore.spencer000100@gmail.com'
  WHEN '000110' THEN 'vincenzo.lucchesst000110@gmail.com'
  WHEN '000120' THEN 'sean.oconnell000120@gmail.com'
  WHEN '000130' THEN 'delores.quinana000130@gmail.com'
  WHEN '000140' THEN 'heather.nicholls000140@gmail.com'
  WHEN '000150' THEN 'bruce.adamson000150@gmail.com'
  WHEN '000160' THEN 'elezabeth.pinka000160@gmail.com'
  WHEN '000170' THEN 'masaioshi.yoshimura000170@gmail.com'
  WHEN '000180' THEN 'martiyn.scouttfn000180@gmail.com'
  WHEN '000190' THEN 'james.walker000190@gmail.com'
  WHEN '000200' THEN 'david.brown000200@gmail.com'
  WHEN '000210' THEN 'william.jones000210@gmail.com'
  WHEN '000220' THEN 'jenniffr.lutz000220@gmail.com'
  WHEN '000230' THEN 'james.jefferson000230@gmail.com'
  WHEN '000240' THEN 'salvatore.marino000240@gmail.com'
  WHEN '000250' THEN 'daniel.smith000250@gmail.com'
  WHEN '000260' THEN 'sybil.johnson000260@gmail.com'
  WHEN '000270' THEN 'maria.perez000270@gmail.com'
  WHEN '000280' THEN 'ethel.schneider000280@gmail.com'
  WHEN '000290' THEN 'john.parker000290@gmail.com'
  WHEN '000300' THEN 'philip.smith000300@gmail.com'
  WHEN '000310' THEN 'maude.setright000310@gmail.com'
  WHEN '000320' THEN 'ramlal.mehta000320@gmail.com'
  WHEN '000330' THEN 'wing.iff000330@gmail.com'
  WHEN '000340' THEN 'jason.gounot000340@gmail.com'
  WHEN '200010' THEN 'dian.hemminger200010@gmail.com'
  WHEN '200120' THEN 'greg.orlando200120@gmail.com'
  WHEN '200140' THEN 'kim.natz200140@gmail.com'
  WHEN '200170' THEN 'kiyoshi.yamamoto200170@gmail.com'
  WHEN '200220' THEN 'reba.john200220@gmail.com'
  WHEN '200240' THEN 'robert.monteverde200240@gmail.com'
  WHEN '200280' THEN 'eilleen.schwartz200280@gmail.com'
  WHEN '200310' THEN 'michelle.springer200310@gmail.com'
  WHEN '200330' THEN 'helena.wong200330@gmail.com'
  WHEN '200340' THEN 'roy.alonzo200340@gmail.com'
END
WHERE empno IN (
  '000010','000020','000030','000050','000060','000070','000090','000100',
  '000110','000120','000130','000140','000150','000160','000170','000180',
  '000190','000200','000210','000220','000230','000240','000250','000260',
  '000270','000280','000290','000300','000310','000320','000330','000340',
  '200010','200120','200140','200170','200220','200240','200280','200310',
  '200330','200340'
);

ALTER TABLE DEPARTMENT
MODIFY DATE_CREATED DATETIME NOT NULL,
MODIFY DEPT_CONTACT_NO CHAR(11) NOT NULL;

SELECT * FROM DEPARTMENT;

 