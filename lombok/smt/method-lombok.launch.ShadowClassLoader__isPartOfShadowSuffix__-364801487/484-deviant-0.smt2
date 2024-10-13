(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2611 0)
(declare-sort var806 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var2611_urlDecode/-772833716 (String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var2611 var2611)
(declare-const null-String String)
(declare-const var585 var2611) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var585 null-var2611)))
(declare-const var3913 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3913 null-String)))
(declare-const var2312 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2312 null-String)))
(declare-const var1521 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1521 null-String)))
 ; Statement: if r5 != null goto $z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("file:/") 
(assert (not (= var3913 null-String))) ; Cond: r5 != null 
(assert true)
(define-const var2185 Bool (startsWith/-1785782452 var3913 "file:/")) ; Statement: $z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("file:/") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("jar:") 
(assert (not (= (ite var2185 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert (not (and true (and (>= 5 0) (>= (str.len var3913) 5)))))
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), substring/850833817=([java.lang.String, int], java.lang.String), var2611_urlDecode/-772833716=([java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var2611=lombok.launch.ShadowClassLoader, var585=r1, var3913=r5, var806=null_type, var2312=r4, var1521=r2, var2185=$z0, var115=$r3, var58=r6, var829=$i1, var3355=$i0, var235=$z3}
; {lombok.launch.ShadowClassLoader=var2611, r1=var585, r5=var3913, null_type=var806, r4=var2312, r2=var1521, $z0=var2185, $r3=var115, r6=var58, $i1=var829, $i0=var3355, $z3=var235}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r5 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	if r5 != null goto $z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("file:/");	$z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("file:/");	if $z0 == 0 goto $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("jar:");	$r3 = virtualinvoke r5.<java.lang.String: java.lang.String substring(int)>(5);	r6 = staticinvoke <lombok.launch.ShadowClassLoader: java.lang.String urlDecode(java.lang.String)>($r3);	$i1 = virtualinvoke r6.<java.lang.String: int length()>();	$i0 = virtualinvoke r4.<java.lang.String: int length()>();	if $i1 <= $i0 goto return 0;	$z3 = virtualinvoke r6.<java.lang.String: boolean endsWith(java.lang.String)>(r4);	if $z3 == 0 goto return 0;	return 0
;block_num 5