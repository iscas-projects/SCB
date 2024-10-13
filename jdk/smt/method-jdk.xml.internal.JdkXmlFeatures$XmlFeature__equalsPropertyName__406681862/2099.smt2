(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var266 0)
(declare-sort var1402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1153006781 (var266) String)
(declare-const null-var266 var266)
(declare-const null-String String)
(declare-const var1889 var266) ; Statement: r0 := @this: jdk.xml.internal.JdkXmlFeatures$XmlFeature 
(assert (not (= var1889 null-var266)))
(declare-const var1280 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1280 null-String)))
(define-const var2706 String (name/-1153006781 var1889)) ; Statement: $r2 = r0.<jdk.xml.internal.JdkXmlFeatures$XmlFeature: java.lang.String name> 
(assert true)
(define-const var2432 Bool (= var2706 var1280)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var2432 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1361 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1153006781=([jdk.xml.internal.JdkXmlFeatures$XmlFeature], java.lang.String)}
; {var266=jdk.xml.internal.JdkXmlFeatures$XmlFeature, var1889=r0, var1280=r1, var1402=null_type, var2706=$r2, var2432=$z0, var1361=$z2}
; {jdk.xml.internal.JdkXmlFeatures$XmlFeature=var266, r0=var1889, r1=var1280, null_type=var1402, $r2=var2706, $z0=var2432, $z2=var1361}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.xml.internal.JdkXmlFeatures$XmlFeature;	r1 := @parameter0: java.lang.String;	$r2 = r0.<jdk.xml.internal.JdkXmlFeatures$XmlFeature: java.lang.String name>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3