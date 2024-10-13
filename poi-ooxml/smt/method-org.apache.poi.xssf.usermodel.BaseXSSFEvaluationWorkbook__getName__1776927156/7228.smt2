(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2372 0)
(declare-sort var2388 0)
(declare-sort var1587 0)
(declare-sort var2494 0)
(declare-sort var694 0)
(declare-sort var3761 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _uBook/-2125958453 (var2372) var1587)
(declare-fun getNumberOfNames/1359497946 (var1587) Int)
(declare-fun getNameAt/-325164129 (var1587 Int) var2494)
(declare-fun getNameName/-677978693 (var2494) String)
(declare-fun getSheetIndex/794094486 (var2494) Int)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var694-init () var694)
(declare-fun <init>/-1579177513 (var694 var2494 Int var3761) void)
(declare-fun cast-from-var2372-to-var3761 (var2372) var3761)
(declare-const null-var2372 var2372)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var654 var2372) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook 
(assert (not (= var654 null-var2372)))
(declare-const var1026 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1026 null-String)))
(declare-const var691 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var691 null-Int)))
(define-const var3887 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3535 var1587 (_uBook/-2125958453 var654)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook: org.apache.poi.xssf.usermodel.XSSFWorkbook _uBook> 
(assert true)
(define-const var436 Int (getNumberOfNames/1359497946 var3535)) ; Statement: $i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getNumberOfNames()>() 
 ; Statement: if i3 >= $i0 goto $i7 = (int) -1 
(assert (not (>= var3887 var436))) ; Negate: Cond: i3 >= $i0  
(define-const var663 var1587 (_uBook/-2125958453 var654)) ; Statement: $r3 = r0.<org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook: org.apache.poi.xssf.usermodel.XSSFWorkbook _uBook> 
(assert true)
(define-const var51 var2494 (getNameAt/-325164129 var663 var3887)) ; Statement: r4 = virtualinvoke $r3.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getNameAt(int)>(i3) 
(assert true)
(define-const var2278 String (getNameName/-677978693 var51)) ; Statement: r5 = virtualinvoke r4.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getNameName()>() 
(assert true)
(define-const var3247 Int (getSheetIndex/794094486 var51)) ; Statement: i2 = virtualinvoke r4.<org.apache.poi.xssf.usermodel.XSSFName: int getSheetIndex()>() 
(assert true)
(define-const var3668 Bool (equalsIgnoreCase/-92311102 var1026 var2278)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r5) 
 ; Statement: if $z0 == 0 goto i3 = i3 + 1 
(assert (not (= (ite var3668 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1370 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i2 == $i5 goto $r8 = new org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook$Name 
(assert (= var3247 var1370)) ; Cond: i2 == $i5 
(define-const var1052 var694 var694-init) ; Statement: $r8 = new org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook$Name 
(assert true)
;(assert (<init>/-1579177513 var1052 var51 var3887 (cast-from-var2372-to-var3761 var654))) ; Statement: specialinvoke $r8.<org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook$Name: void <init>(org.apache.poi.xssf.usermodel.XSSFName,int,org.apache.poi.ss.formula.FormulaParsingWorkbook)>(r4, i3, r0) 

(declare-const var1052!1 var694)
(declare-const var51!1 var2494)
(declare-const var3887!1 Int)
(declare-const var654!1 var2372)
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {_uBook/-2125958453=([org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook], org.apache.poi.xssf.usermodel.XSSFWorkbook), getNumberOfNames/1359497946=([org.apache.poi.xssf.usermodel.XSSFWorkbook], int), getNameAt/-325164129=([org.apache.poi.xssf.usermodel.XSSFWorkbook, int], org.apache.poi.xssf.usermodel.XSSFName), getNameName/-677978693=([org.apache.poi.xssf.usermodel.XSSFName], java.lang.String), getSheetIndex/794094486=([org.apache.poi.xssf.usermodel.XSSFName], int), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), cast-from-Int-to-Int=([int], int), var694-init=([], org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook$Name), <init>/-1579177513=([org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook$Name, org.apache.poi.xssf.usermodel.XSSFName, int, org.apache.poi.ss.formula.FormulaParsingWorkbook], void), cast-from-var2372-to-var3761=([org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook], org.apache.poi.ss.formula.FormulaParsingWorkbook)}
; {var2372=org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook, var654=r0, var1026=r2, var2388=null_type, var691=i1, var3887=i3, var1587=org.apache.poi.xssf.usermodel.XSSFWorkbook, var3535=$r1, var436=$i0, var663=$r3, var2494=org.apache.poi.xssf.usermodel.XSSFName, var51=r4, var2278=r5, var3247=i2, var3668=$z0, var1370=$i5, var694=org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook$Name, var1052=$r8, var3761=org.apache.poi.ss.formula.FormulaParsingWorkbook}
; {org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook=var2372, r0=var654, r2=var1026, null_type=var2388, i1=var691, i3=var3887, org.apache.poi.xssf.usermodel.XSSFWorkbook=var1587, $r1=var3535, $i0=var436, $r3=var663, org.apache.poi.xssf.usermodel.XSSFName=var2494, r4=var51, r5=var2278, i2=var3247, $z0=var3668, $i5=var1370, org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook$Name=var694, $r8=var1052, org.apache.poi.ss.formula.FormulaParsingWorkbook=var3761}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook;	r2 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i3 = 0;	$r1 = r0.<org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook: org.apache.poi.xssf.usermodel.XSSFWorkbook _uBook>;	$i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getNumberOfNames()>();	if i3 >= $i0 goto $i7 = (int) -1;	$r3 = r0.<org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook: org.apache.poi.xssf.usermodel.XSSFWorkbook _uBook>;	r4 = virtualinvoke $r3.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getNameAt(int)>(i3);	r5 = virtualinvoke r4.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getNameName()>();	i2 = virtualinvoke r4.<org.apache.poi.xssf.usermodel.XSSFName: int getSheetIndex()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r5);	if $z0 == 0 goto i3 = i3 + 1;	$i5 = (int) -1;	if i2 == $i5 goto $r8 = new org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook$Name;	$r8 = new org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook$Name;	specialinvoke $r8.<org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook$Name: void <init>(org.apache.poi.xssf.usermodel.XSSFName,int,org.apache.poi.ss.formula.FormulaParsingWorkbook)>(r4, i3, r0);	return $r8
;block_num 5