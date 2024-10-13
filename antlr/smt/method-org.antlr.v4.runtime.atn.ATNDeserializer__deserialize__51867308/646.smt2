(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var719 0)
(declare-sort var3002 0)
(declare-sort var171 0)
(declare-sort var3583 0)
(declare-sort var3501 0)
(declare-sort var144 0)
(declare-sort var220 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var144!class ClassObject)
(declare-fun var3002_getDefault/-641693464 () var3002)
(declare-fun arr-var171-init () (Array Int var171))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var171 (Int) var171)
(declare-fun String_format/-647569892 (var3002 String (Array Int var171)) String)
(declare-fun var3583-init () var3583)
(declare-fun var3501-init () var3501)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun <init>/347838971 (var3501 String String) void)
(declare-fun <init>/467776196 (var3583 var220) void)
(declare-fun cast-from-var3501-to-var220 (var3501) var220)
(declare-const null-var719 var719)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var719-SERIALIZED_VERSION Int)
(declare-const null-__Array__Int__var171__ (Array Int var171))
(declare-const var539 var719) ; Statement: r11 := @this: org.antlr.v4.runtime.atn.ATNDeserializer 
(assert (not (= var539 null-var719)))
(declare-const var319 (Array Int Int)) ; Statement: r0 := @parameter0: int[] 
(assert (not (= var319 null-__Array__Int__Int__)))
(define-const var506 Int (select var319 0)) ; Statement: i0 = r0[0] 
(define-const var3424 Int var719-SERIALIZED_VERSION) ; Statement: $i1 = <org.antlr.v4.runtime.atn.ATNDeserializer: int SERIALIZED_VERSION> 
 ; Statement: if i0 == $i1 goto $r1 = staticinvoke <org.antlr.v4.runtime.atn.ATNType: org.antlr.v4.runtime.atn.ATNType[] values()>() 
(assert (not (= var506 var3424))) ; Negate: Cond: i0 == $i1  
(define-const var2575 var3002 var3002_getDefault/-641693464) ; Statement: $r135 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(define-const var411 (Array Int var171) arr-var171-init) ; Statement: $r132 = newarray (java.lang.Object)[2] 
(define-const var742 Int (Int_valueOf/-1371140006 var506)) ; Statement: $r133 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var411!1 (Array Int var171))
(assert (not (= var411!1 null-__Array__Int__var171__)))
(assert (= (select var411!1 0) (cast-from-Int-to-var171 var742))) ; Statement: $r132[0] = $r133 
(define-const var2526 Int var719-SERIALIZED_VERSION) ; Statement: $i46 = <org.antlr.v4.runtime.atn.ATNDeserializer: int SERIALIZED_VERSION> 
(define-const var1176 Int (Int_valueOf/-1371140006 var2526)) ; Statement: $r134 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i46) 
(declare-const var411!2 (Array Int var171))
(assert (not (= var411!2 null-__Array__Int__var171__)))
(assert (= (select var411!2 1) (cast-from-Int-to-var171 var1176))) ; Statement: $r132[1] = $r134 
(define-const var571 String (String_format/-647569892 var2575 "Could not deserialize ATN with version %d (expected %d)." var411!2)) ; Statement: r140 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r135, "Could not deserialize ATN with version %d (expected %d).", $r132) 
(define-const var384 var3583 var3583-init) ; Statement: $r180 = new java.lang.UnsupportedOperationException 
(define-const var1751 var3501 var3501-init) ; Statement: $r179 = new java.io.InvalidClassException 
(define-const var1898 ClassObject var144!class) ; Statement: $r138 = class "Lorg/antlr/v4/runtime/atn/ATN;" 
(assert true)
(define-const var3804 String (getName/-1958580599 var1898)) ; Statement: $r139 = virtualinvoke $r138.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (<init>/347838971 var1751 var3804 var571)) ; Statement: specialinvoke $r179.<java.io.InvalidClassException: void <init>(java.lang.String,java.lang.String)>($r139, r140) 

(declare-const var1751!1 var3501)
(declare-const var3804!1 String)
(declare-const var571!1 String)
(assert true)
;(assert (<init>/467776196 var384 (cast-from-var3501-to-var220 var1751!1))) ; Statement: specialinvoke $r180.<java.lang.UnsupportedOperationException: void <init>(java.lang.Throwable)>($r179) 

(declare-const var384!1 var3583)
(declare-const var1751!2 var3501)
 ; Statement: throw $r180 
(check-sat)
(get-model)
(get-unsat-core)
; {var3002_getDefault/-641693464=([], java.util.Locale), arr-var171-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var171=([java.lang.Integer], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), var3583-init=([], java.lang.UnsupportedOperationException), var3501-init=([], java.io.InvalidClassException), getName/-1958580599=([java.lang.Class], java.lang.String), <init>/347838971=([java.io.InvalidClassException, java.lang.String, java.lang.String], void), <init>/467776196=([java.lang.UnsupportedOperationException, java.lang.Throwable], void), cast-from-var3501-to-var220=([java.io.InvalidClassException], java.lang.Throwable)}
; {var719=org.antlr.v4.runtime.atn.ATNDeserializer, var539=r11, var319=r0, var506=i0, var3424=$i1, var3002=java.util.Locale, var2575=$r135, var171=java.lang.Object, var411=$r132, var742=$r133, var2526=$i46, var1176=$r134, var571=r140, var3583=java.lang.UnsupportedOperationException, var384=$r180, var3501=java.io.InvalidClassException, var1751=$r179, var144=org.antlr.v4.runtime.atn.ATN, var1898=$r138, var3804=$r139, var220=java.lang.Throwable}
; {org.antlr.v4.runtime.atn.ATNDeserializer=var719, r11=var539, r0=var319, i0=var506, $i1=var3424, java.util.Locale=var3002, $r135=var2575, java.lang.Object=var171, $r132=var411, $r133=var742, $i46=var2526, $r134=var1176, r140=var571, java.lang.UnsupportedOperationException=var3583, $r180=var384, java.io.InvalidClassException=var3501, $r179=var1751, org.antlr.v4.runtime.atn.ATN=var144, $r138=var1898, $r139=var3804, java.lang.Throwable=var220}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r11 := @this: org.antlr.v4.runtime.atn.ATNDeserializer;	r0 := @parameter0: int[];	i0 = r0[0];	$i1 = <org.antlr.v4.runtime.atn.ATNDeserializer: int SERIALIZED_VERSION>;	if i0 == $i1 goto $r1 = staticinvoke <org.antlr.v4.runtime.atn.ATNType: org.antlr.v4.runtime.atn.ATNType[] values()>();	$r135 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r132 = newarray (java.lang.Object)[2];	$r133 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r132[0] = $r133;	$i46 = <org.antlr.v4.runtime.atn.ATNDeserializer: int SERIALIZED_VERSION>;	$r134 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i46);	$r132[1] = $r134;	r140 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r135, "Could not deserialize ATN with version %d (expected %d).", $r132);	$r180 = new java.lang.UnsupportedOperationException;	$r179 = new java.io.InvalidClassException;	$r138 = class "Lorg/antlr/v4/runtime/atn/ATN;";	$r139 = virtualinvoke $r138.<java.lang.Class: java.lang.String getName()>();	specialinvoke $r179.<java.io.InvalidClassException: void <init>(java.lang.String,java.lang.String)>($r139, r140);	specialinvoke $r180.<java.lang.UnsupportedOperationException: void <init>(java.lang.Throwable)>($r179);	throw $r180
;block_num 2