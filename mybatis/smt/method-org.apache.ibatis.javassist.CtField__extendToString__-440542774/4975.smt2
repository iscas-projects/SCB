(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1072 0)
(declare-sort var3473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getName/573518636 (var1072) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldInfo/-1703048415 (var1072) var3473)
(declare-fun getDescriptor/-1085906438 (var3473) String)
(declare-const null-var1072 var1072)
(declare-const null-String String)
(declare-const var3232 var1072) ; Statement: r1 := @this: org.apache.ibatis.javassist.CtField 
(assert (not (= var3232 null-var1072)))
(declare-const var3211 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3211 null-String)))
(assert true)
;(assert (append/-1166366385 var3211 32)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3211!1 String)
(assert (str.prefixof var3211 var3211!1))
(assert true)
(define-const var729 String (getName/573518636 var3232)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtField: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var3211!1 var729)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3211!2 String)
(assert (= var3211!2 (str.++ var3211!1 var729)))
(assert true)
;(assert (append/-1166366385 var3211!2 32)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3211!3 String)
(assert (str.prefixof var3211!2 var3211!3))
(define-const var715 var3473 (fieldInfo/-1703048415 var3232)) ; Statement: $r3 = r1.<org.apache.ibatis.javassist.CtField: org.apache.ibatis.javassist.bytecode.FieldInfo fieldInfo> 
(assert true)
(define-const var2406 String (getDescriptor/-1085906438 var715)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>() 
(assert true)
;(assert (append/672562846 var3211!3 var2406)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3211!4 String)
(assert (= var3211!4 (str.++ var3211!3 var2406)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getName/573518636=([org.apache.ibatis.javassist.CtField], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldInfo/-1703048415=([org.apache.ibatis.javassist.CtField], org.apache.ibatis.javassist.bytecode.FieldInfo), getDescriptor/-1085906438=([org.apache.ibatis.javassist.bytecode.FieldInfo], java.lang.String)}
; {var1072=org.apache.ibatis.javassist.CtField, var3232=r1, var3211=r0, var729=$r2, var3473=org.apache.ibatis.javassist.bytecode.FieldInfo, var715=$r3, var2406=$r4}
; {org.apache.ibatis.javassist.CtField=var1072, r1=var3232, r0=var3211, $r2=var729, org.apache.ibatis.javassist.bytecode.FieldInfo=var3473, $r3=var715, $r4=var2406}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r1 := @this: org.apache.ibatis.javassist.CtField;	r0 := @parameter0: java.lang.StringBuilder;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtField: java.lang.String getName()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r3 = r1.<org.apache.ibatis.javassist.CtField: org.apache.ibatis.javassist.bytecode.FieldInfo fieldInfo>;	$r4 = virtualinvoke $r3.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	return
;block_num 1