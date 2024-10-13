(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var292 0)
(declare-sort var3564 0)
(declare-sort var422 0)
(declare-sort var988 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBuiltInName/1235420764 (var292 String Int) var422)
(declare-fun split/1265909012 (var988 String) (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setRefersToFormula/1729336561 (var422 String) void)
(declare-const null-var292 var292)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var422 var422)
(declare-const var292-COMMA_PATTERN var988)
(declare-const var427 var292) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var427 null-var292)))
(declare-const var637 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var637 null-Int)))
(declare-const var89 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var89 null-String)))
(assert true)
(define-const var429 var422 (getBuiltInName/1235420764 var427 "_xlnm.Print_Area" var637)) ; Statement: r8 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Area", i0) 
 ; Statement: if r8 != null goto $r2 = <org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.regex.Pattern COMMA_PATTERN> 
(assert (not (= var429 null-var422))) ; Cond: r8 != null 
(define-const var1287 var988 var292-COMMA_PATTERN) ; Statement: $r2 = <org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.regex.Pattern COMMA_PATTERN> 
(assert true)
(define-const var2814 (Array Int String) (split/1265909012 var1287 (cast-from-String-to-String var89))) ; Statement: $r7 = virtualinvoke $r2.<java.util.regex.Pattern: java.lang.String[] split(java.lang.CharSequence)>(r1) 
(define-const var3051 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3051 32)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>(32) 

(declare-const var3051!1 String)
(declare-const var1819 Int)
(define-const var3666 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var3429 Int (getLength-Arr-String-1 var2814)) ; Statement: $i2 = lengthof $r7 
 ; Statement: if i1 >= $i2 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3666 var3429)) ; Cond: i1 >= $i2 
(assert true)
(define-const var3794 String (toString/-2075883882 var3051!1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setRefersToFormula/1729336561 var429 var3794)) ; Statement: virtualinvoke r8.<org.apache.poi.xssf.usermodel.XSSFName: void setRefersToFormula(java.lang.String)>($r4) 

(declare-const var429!1 var422)
(declare-const var3794!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getBuiltInName/1235420764=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], org.apache.poi.xssf.usermodel.XSSFName), split/1265909012=([java.util.regex.Pattern, java.lang.CharSequence], java.lang.String[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), getLength-Arr-String-1=([java.lang.String[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setRefersToFormula/1729336561=([org.apache.poi.xssf.usermodel.XSSFName, java.lang.String], void)}
; {var292=org.apache.poi.xssf.usermodel.XSSFWorkbook, var427=r0, var637=i0, var89=r1, var3564=null_type, var422=org.apache.poi.xssf.usermodel.XSSFName, var429=r8, var988=java.util.regex.Pattern, var1287=$r2, var2814=$r7, var3051=$r3, var1819=32, var3666=i1, var3429=$i2, var3794=$r4}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var292, r0=var427, i0=var637, r1=var89, null_type=var3564, org.apache.poi.xssf.usermodel.XSSFName=var422, r8=var429, java.util.regex.Pattern=var988, $r2=var1287, $r7=var2814, $r3=var3051, 32=var1819, i1=var3666, $i2=var3429, $r4=var3794}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	i0 := @parameter0: int;	r1 := @parameter1: java.lang.String;	r8 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Area", i0);	if r8 != null goto $r2 = <org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.regex.Pattern COMMA_PATTERN>;	$r2 = <org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.regex.Pattern COMMA_PATTERN>;	$r7 = virtualinvoke $r2.<java.util.regex.Pattern: java.lang.String[] split(java.lang.CharSequence)>(r1);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>(32);	i1 = 0;	$i2 = lengthof $r7;	if i1 >= $i2 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r8.<org.apache.poi.xssf.usermodel.XSSFName: void setRefersToFormula(java.lang.String)>($r4);	return
;block_num 4