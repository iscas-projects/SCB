(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2095 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isArray/604507311 (var2095) Bool)
(declare-fun isPrimitive/160276961 (var2095) Bool)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getName/1611768686 (var2095) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const null-var2095 var2095)
(declare-const var2587 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2587 null-String)))
(declare-const var2353 var2095) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.CtClass 
(assert (not (= var2353 null-var2095)))
(assert true)
(define-const var3489 Bool (isArray/604507311 var2353)) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isArray()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isPrimitive()>() 
(assert (= (ite var3489 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var940 Bool (isPrimitive/160276961 var2353)) ; Statement: $z1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isPrimitive()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76) 
(assert (= (ite var940 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (append/-1166366385 var2587 76)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76) 
(declare-const var2587!1 String)
(assert (str.prefixof var2587 var2587!1))
(assert true)
(define-const var292 String (getName/1611768686 var2353)) ; Statement: $r2 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var3269 String (replace/1524665721 var292 46 47)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
;(assert (append/672562846 var2587!1 var3269)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2587!2 String)
(assert (= var2587!2 (str.++ var2587!1 var3269)))
(assert true)
;(assert (append/-1166366385 var2587!2 59)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59) 
(declare-const var2587!3 String)
(assert (str.prefixof var2587!2 var2587!3))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isArray/604507311=([org.apache.ibatis.javassist.CtClass], boolean), isPrimitive/160276961=([org.apache.ibatis.javassist.CtClass], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2587=r1, var2095=org.apache.ibatis.javassist.CtClass, var2353=r0, var3489=$z0, var940=$z1, var292=$r2, var3269=$r3}
; {r1=var2587, org.apache.ibatis.javassist.CtClass=var2095, r0=var2353, $z0=var3489, $z1=var940, $r2=var292, $r3=var3269}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: org.apache.ibatis.javassist.CtClass;	$z0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isArray()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isPrimitive()>();	$z1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isPrimitive()>();	if $z1 == 0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76);	$r2 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59);	return
;block_num 4