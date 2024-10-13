(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1019 0)
(declare-sort var1446 0)
(declare-sort var2446 0)
(declare-sort var2931 0)
(declare-sort var1021 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun _uBook/-2125958453 (var1019) var2931)
(declare-fun getExternalLinksTable/542166601 (var2931) var1021)
(declare-fun findExternalLinkIndex/-410764472 (var1019 String var1021) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1019 var1019)
(declare-const null-String String)
(declare-const null-var2446 var2446)
(declare-const var1386 var1019) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook 
(assert (not (= var1386 null-var1019)))
(declare-const var286 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var286 null-String)))
(assert true)
(define-const var2678 Bool (startsWith/-1785782452 var286 "[")) ; Statement: $z0 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("[") 
 ; Statement: if $z0 == 0 goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r9) 
(assert (not (= (ite var2678 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var3433 var2446) ; Statement: $r0 := @caughtexception 
(assert (not (= var3433 null-var2446)))
(define-const var978 var2931 (_uBook/-2125958453 var1386)) ; Statement: $r2 = r1.<org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook: org.apache.poi.xssf.usermodel.XSSFWorkbook _uBook> 
(assert true)
(define-const var285 var1021 (getExternalLinksTable/542166601 var978)) ; Statement: r10 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.List getExternalLinksTable()>() 
(assert true)
(define-const var1144 Int (findExternalLinkIndex/-410764472 var1386 var286 var285)) ; Statement: i8 = specialinvoke r1.<org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook: int findExternalLinkIndex(java.lang.String,java.util.List)>(r9, r10) 
(define-const var3538 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i8 == $i11 goto $z2 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("\'file:///") 
(assert (not (= var1144 var3538))) ; Negate: Cond: i8 == $i11  
 ; Statement: return i8 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), _uBook/-2125958453=([org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook], org.apache.poi.xssf.usermodel.XSSFWorkbook), getExternalLinksTable/542166601=([org.apache.poi.xssf.usermodel.XSSFWorkbook], java.util.List), findExternalLinkIndex/-410764472=([org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook, java.lang.String, java.util.List], int), cast-from-Int-to-Int=([int], int)}
; {var1019=org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook, var1386=r1, var286=r9, var1446=null_type, var2678=$z0, var2446=java.lang.NumberFormatException, var3433=$r0, var2931=org.apache.poi.xssf.usermodel.XSSFWorkbook, var978=$r2, var1021=java.util.List, var285=r10, var1144=i8, var3538=$i11}
; {org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook=var1019, r1=var1386, r9=var286, null_type=var1446, $z0=var2678, java.lang.NumberFormatException=var2446, $r0=var3433, org.apache.poi.xssf.usermodel.XSSFWorkbook=var2931, $r2=var978, java.util.List=var1021, r10=var285, i8=var1144, $i11=var3538}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook;	r9 := @parameter0: java.lang.String;	$z0 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("[");	if $z0 == 0 goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r9);	$r0 := @caughtexception;	$r2 = r1.<org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook: org.apache.poi.xssf.usermodel.XSSFWorkbook _uBook>;	r10 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.List getExternalLinksTable()>();	i8 = specialinvoke r1.<org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook: int findExternalLinkIndex(java.lang.String,java.util.List)>(r9, r10);	$i11 = (int) -1;	if i8 == $i11 goto $z2 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("\'file:///");	return i8
;block_num 3