(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun encode2/-940255552 (var859 String) void)
(declare-const null-var859 var859)
(declare-const null-String String)
(declare-const var1655 var859) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType 
(assert (not (= var1655 null-var859)))
(declare-const var1241 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1241 null-String)))
(assert true)
;(assert (append/-1166366385 var1241 76)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76) 
(declare-const var1241!1 String)
(assert (str.prefixof var1241 var1241!1))
(assert true)
;(assert (encode2/-940255552 var1655 var1241!1)) ; Statement: virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: void encode2(java.lang.StringBuilder)>(r0) 

(declare-const var1655!1 var859)
(declare-const var1241!2 String)
(assert true)
;(assert (append/-1166366385 var1241!2 59)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59) 
(declare-const var1241!3 String)
(assert (str.prefixof var1241!2 var1241!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), encode2/-940255552=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType, java.lang.StringBuilder], void)}
; {var859=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType, var1655=r1, var1241=r0}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType=var859, r1=var1655, r0=var1241}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType;	r0 := @parameter0: java.lang.StringBuilder;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76);	virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: void encode2(java.lang.StringBuilder)>(r0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59);	return
;block_num 1