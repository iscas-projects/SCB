(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var673 0)
(declare-sort var3710 0)
(declare-sort var2862 0)
(declare-sort var446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var446) void)
(declare-fun cast-from-var673-to-var446 (var673) var446)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun buffer/-772521324 (var673) String)
(declare-fun baseType/-772521324 (var673) var3710)
(declare-fun context/-772521324 (var673) var2862)
(declare-const null-var673 var673)
(declare-const null-var3710 var3710)
(declare-const null-var2862 var2862)
(declare-const var3771 var673) ; Statement: r0 := @this: org.relaxng.datatype.helpers.StreamingValidatorImpl 
(assert (not (= var3771 null-var673)))
(declare-const var664 var3710) ; Statement: r2 := @parameter0: org.relaxng.datatype.Datatype 
(assert (not (= var664 null-var3710)))
(declare-const var2438 var2862) ; Statement: r3 := @parameter1: org.relaxng.datatype.ValidationContext 
(assert (not (= var2438 null-var2862)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var673-to-var446 var3771))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3771!1 var673)
(define-const var2141 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2141)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2141!1 String)
(declare-const var3771!2 var673)
(assert (not (= var3771!2 null-var673)))
(assert (= (buffer/-772521324 var3771!2) var2141!1)) ; Statement: r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: java.lang.StringBuffer buffer> = $r1 
(declare-const var3771!3 var673)
(assert (not (= var3771!3 null-var673)))
(assert (= (baseType/-772521324 var3771!3) var664)) ; Statement: r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: org.relaxng.datatype.Datatype baseType> = r2 
(declare-const var3771!4 var673)
(assert (not (= var3771!4 null-var673)))
(assert (= (context/-772521324 var3771!4) var2438)) ; Statement: r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: org.relaxng.datatype.ValidationContext context> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var673-to-var446=([org.relaxng.datatype.helpers.StreamingValidatorImpl], java.lang.Object), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), buffer/-772521324=([org.relaxng.datatype.helpers.StreamingValidatorImpl], java.lang.StringBuffer), baseType/-772521324=([org.relaxng.datatype.helpers.StreamingValidatorImpl], org.relaxng.datatype.Datatype), context/-772521324=([org.relaxng.datatype.helpers.StreamingValidatorImpl], org.relaxng.datatype.ValidationContext)}
; {var673=org.relaxng.datatype.helpers.StreamingValidatorImpl, var3771=r0, var3710=org.relaxng.datatype.Datatype, var664=r2, var2862=org.relaxng.datatype.ValidationContext, var2438=r3, var446=java.lang.Object, var2141=$r1}
; {org.relaxng.datatype.helpers.StreamingValidatorImpl=var673, r0=var3771, org.relaxng.datatype.Datatype=var3710, r2=var664, org.relaxng.datatype.ValidationContext=var2862, r3=var2438, java.lang.Object=var446, $r1=var2141}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: org.relaxng.datatype.helpers.StreamingValidatorImpl;	r2 := @parameter0: org.relaxng.datatype.Datatype;	r3 := @parameter1: org.relaxng.datatype.ValidationContext;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: java.lang.StringBuffer buffer> = $r1;	r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: org.relaxng.datatype.Datatype baseType> = r2;	r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: org.relaxng.datatype.ValidationContext context> = r3;	return
;block_num 1