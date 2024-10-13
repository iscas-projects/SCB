(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3010 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun name/-1737529467 (var3010) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3010 var3010)
(declare-const null-String String)
(declare-const var1083 var3010) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable 
(assert (not (= var1083 null-var3010)))
(declare-const var1871 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1871 null-String)))
(assert true)
(define-const var2277 String (append/-1166366385 var1871 84)) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(84) 
(declare-const var1871!1 String)
(assert (str.prefixof var1871 var1871!1))
(define-const var1486 String (name/-1737529467 var1083)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable: java.lang.String name> 
(assert true)
(define-const var2204 String (append/672562846 var2277 var1486)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2277!1 String)
(assert (= var2277!1 (str.++ var2277 var1486)))
(assert true)
;(assert (append/-1166366385 var2204 59)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59) 
(declare-const var2204!1 String)
(assert (str.prefixof var2204 var2204!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), name/-1737529467=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3010=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable, var1083=r1, var1871=r0, var2277=$r3, var1486=$r2, var2204=$r4}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable=var3010, r1=var1083, r0=var1871, $r3=var2277, $r2=var1486, $r4=var2204}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable;	r0 := @parameter0: java.lang.StringBuilder;	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(84);	$r2 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59);	return
;block_num 1