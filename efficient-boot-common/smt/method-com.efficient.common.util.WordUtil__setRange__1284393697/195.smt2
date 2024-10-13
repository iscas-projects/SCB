(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var913 0)
(declare-sort var474 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun replace/-1561151488 (var913 String String) Int)
(declare-const null-var913 var913)
(declare-const null-String String)
(declare-const var2499 var913) ; Statement: r0 := @parameter0: com.aspose.words.Range 
(assert (not (= var2499 null-var913)))
(declare-const var1683 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1683 null-String)))
(declare-const var294 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var294 null-String)))
 ; Statement: if r3 == null goto $r4 = "" 
(assert (= var294 null-String)) ; Cond: r3 == null 
(define-const var1005 String "") ; Statement: $r4 = "" 
 ; Statement: goto [?= $r2 = virtualinvoke $r4.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("null", "")] 
(assert true) ; Non Conditional
(assert true)
(define-const var1028 String (replaceAll/1692887130 var1005 "null" "")) ; Statement: $r2 = virtualinvoke $r4.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("null", "") 
(assert (= (replaceAll/1692887130 var1005 "null" "") (str.replace_re_all var1005 (str.to_re "null") "")))
(assert true)
;(assert (replace/-1561151488 var2499 var1683 var1028)) ; Statement: virtualinvoke r0.<com.aspose.words.Range: int replace(java.lang.String,java.lang.String)>(r1, $r2) 

(declare-const var2499!1 var913)
(declare-const var1683!1 String)
(declare-const var1028!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), replace/-1561151488=([com.aspose.words.Range, java.lang.String, java.lang.String], int)}
; {var913=com.aspose.words.Range, var2499=r0, var1683=r1, var474=null_type, var294=r3, var1005=$r4, var1028=$r2}
; {com.aspose.words.Range=var913, r0=var2499, r1=var1683, null_type=var474, r3=var294, $r4=var1005, $r2=var1028}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @parameter0: com.aspose.words.Range;	r1 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	if r3 == null goto $r4 = "";	$r4 = "";	goto [?= $r2 = virtualinvoke $r4.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("null", "")];	$r2 = virtualinvoke $r4.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("null", "");	virtualinvoke r0.<com.aspose.words.Range: int replace(java.lang.String,java.lang.String)>(r1, $r2);	return
;block_num 3