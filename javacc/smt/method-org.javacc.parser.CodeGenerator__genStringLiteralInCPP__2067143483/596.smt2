(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1264 0)
(declare-sort var1436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun outputBuffer/-1919349735 (var1264) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1264 var1264)
(declare-const null-String String)
(declare-const var494 var1264) ; Statement: r0 := @this: org.javacc.parser.CodeGenerator 
(assert (not (= var494 null-var1264)))
(declare-const var3520 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3520 null-String)))
(define-const var3234 String (outputBuffer/-1919349735 var494)) ; Statement: $r1 = r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer outputBuffer> 
(assert true)
;(assert (append/1560614132 var3234 "{")) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("{") 
(declare-const var3234!1 String)
(assert (str.prefixof var3234 var3234!1))
(define-const var1533 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1207 Int (length/-134980193 var3520)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto $r3 = r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer outputBuffer> 
(assert (>= var1533 var1207)) ; Cond: i2 >= $i0 
(define-const var2207 String (outputBuffer/-1919349735 var494)) ; Statement: $r3 = r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer outputBuffer> 
(assert true)
;(assert (append/1560614132 var2207 "0}")) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("0}") 
(declare-const var2207!1 String)
(assert (str.prefixof var2207 var2207!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {outputBuffer/-1919349735=([org.javacc.parser.CodeGenerator], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), length/-134980193=([java.lang.String], int)}
; {var1264=org.javacc.parser.CodeGenerator, var494=r0, var3520=r2, var1436=null_type, var3234=$r1, var1533=i2, var1207=$i0, var2207=$r3}
; {org.javacc.parser.CodeGenerator=var1264, r0=var494, r2=var3520, null_type=var1436, $r1=var3234, i2=var1533, $i0=var1207, $r3=var2207}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.javacc.parser.CodeGenerator;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer outputBuffer>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("{");	i2 = 0;	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	if i2 >= $i0 goto $r3 = r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer outputBuffer>;	$r3 = r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer outputBuffer>;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("0}");	return
;block_num 3