(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3531 0)
(declare-sort var3262 0)
(declare-sort var2468 0)
(declare-sort var1877 0)
(declare-sort var2698 0)
(declare-sort var128 0)
(declare-sort var3462 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var128!class ClassObject)
(declare-fun var3262_getDefault/-641693464 () var3262)
(declare-fun arr-var2468-init () (Array Int var2468))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2468 (Int) var2468)
(declare-fun String_format/-647569892 (var3262 String (Array Int var2468)) String)
(declare-fun var1877-init () var1877)
(declare-fun var2698-init () var2698)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun <init>/347838971 (var2698 String String) void)
(declare-fun <init>/467776196 (var1877 var3462) void)
(declare-fun cast-from-var2698-to-var3462 (var2698) var3462)
(declare-const null-var3531 var3531)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3531-SERIALIZED_VERSION Int)
(declare-const null-__Array__Int__var2468__ (Array Int var2468))
(declare-const var3529 var3531) ; Statement: r11 := @this: com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer 
(assert (not (= var3529 null-var3531)))
(declare-const var559 (Array Int Int)) ; Statement: r0 := @parameter0: int[] 
(assert (not (= var559 null-__Array__Int__Int__)))
(define-const var2259 Int (select var559 0)) ; Statement: i0 = r0[0] 
(define-const var2119 Int var3531-SERIALIZED_VERSION) ; Statement: $i1 = <com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer: int SERIALIZED_VERSION> 
 ; Statement: if i0 == $i1 goto $r1 = staticinvoke <com.github.jknack.handlebars.internal.antlr.atn.ATNType: com.github.jknack.handlebars.internal.antlr.atn.ATNType[] values()>() 
(assert (not (= var2259 var2119))) ; Negate: Cond: i0 == $i1  
(define-const var2590 var3262 var3262_getDefault/-641693464) ; Statement: $r135 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(define-const var1826 (Array Int var2468) arr-var2468-init) ; Statement: $r132 = newarray (java.lang.Object)[2] 
(define-const var2303 Int (Int_valueOf/-1371140006 var2259)) ; Statement: $r133 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var1826!1 (Array Int var2468))
(assert (not (= var1826!1 null-__Array__Int__var2468__)))
(assert (= (select var1826!1 0) (cast-from-Int-to-var2468 var2303))) ; Statement: $r132[0] = $r133 
(define-const var3804 Int var3531-SERIALIZED_VERSION) ; Statement: $i46 = <com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer: int SERIALIZED_VERSION> 
(define-const var2783 Int (Int_valueOf/-1371140006 var3804)) ; Statement: $r134 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i46) 
(declare-const var1826!2 (Array Int var2468))
(assert (not (= var1826!2 null-__Array__Int__var2468__)))
(assert (= (select var1826!2 1) (cast-from-Int-to-var2468 var2783))) ; Statement: $r132[1] = $r134 
(define-const var2394 String (String_format/-647569892 var2590 "Could not deserialize ATN with version %d (expected %d)." var1826!2)) ; Statement: r140 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r135, "Could not deserialize ATN with version %d (expected %d).", $r132) 
(define-const var2769 var1877 var1877-init) ; Statement: $r180 = new java.lang.UnsupportedOperationException 
(define-const var1577 var2698 var2698-init) ; Statement: $r179 = new java.io.InvalidClassException 
(define-const var849 ClassObject var128!class) ; Statement: $r138 = class "Lcom/github/jknack/handlebars/internal/antlr/atn/ATN;" 
(assert true)
(define-const var3332 String (getName/-1958580599 var849)) ; Statement: $r139 = virtualinvoke $r138.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (<init>/347838971 var1577 var3332 var2394)) ; Statement: specialinvoke $r179.<java.io.InvalidClassException: void <init>(java.lang.String,java.lang.String)>($r139, r140) 

(declare-const var1577!1 var2698)
(declare-const var3332!1 String)
(declare-const var2394!1 String)
(assert true)
;(assert (<init>/467776196 var2769 (cast-from-var2698-to-var3462 var1577!1))) ; Statement: specialinvoke $r180.<java.lang.UnsupportedOperationException: void <init>(java.lang.Throwable)>($r179) 

(declare-const var2769!1 var1877)
(declare-const var1577!2 var2698)
 ; Statement: throw $r180 
(check-sat)
(get-model)
(get-unsat-core)
; {var3262_getDefault/-641693464=([], java.util.Locale), arr-var2468-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2468=([java.lang.Integer], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), var1877-init=([], java.lang.UnsupportedOperationException), var2698-init=([], java.io.InvalidClassException), getName/-1958580599=([java.lang.Class], java.lang.String), <init>/347838971=([java.io.InvalidClassException, java.lang.String, java.lang.String], void), <init>/467776196=([java.lang.UnsupportedOperationException, java.lang.Throwable], void), cast-from-var2698-to-var3462=([java.io.InvalidClassException], java.lang.Throwable)}
; {var3531=com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer, var3529=r11, var559=r0, var2259=i0, var2119=$i1, var3262=java.util.Locale, var2590=$r135, var2468=java.lang.Object, var1826=$r132, var2303=$r133, var3804=$i46, var2783=$r134, var2394=r140, var1877=java.lang.UnsupportedOperationException, var2769=$r180, var2698=java.io.InvalidClassException, var1577=$r179, var128=com.github.jknack.handlebars.internal.antlr.atn.ATN, var849=$r138, var3332=$r139, var3462=java.lang.Throwable}
; {com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer=var3531, r11=var3529, r0=var559, i0=var2259, $i1=var2119, java.util.Locale=var3262, $r135=var2590, java.lang.Object=var2468, $r132=var1826, $r133=var2303, $i46=var3804, $r134=var2783, r140=var2394, java.lang.UnsupportedOperationException=var1877, $r180=var2769, java.io.InvalidClassException=var2698, $r179=var1577, com.github.jknack.handlebars.internal.antlr.atn.ATN=var128, $r138=var849, $r139=var3332, java.lang.Throwable=var3462}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r11 := @this: com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer;	r0 := @parameter0: int[];	i0 = r0[0];	$i1 = <com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer: int SERIALIZED_VERSION>;	if i0 == $i1 goto $r1 = staticinvoke <com.github.jknack.handlebars.internal.antlr.atn.ATNType: com.github.jknack.handlebars.internal.antlr.atn.ATNType[] values()>();	$r135 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r132 = newarray (java.lang.Object)[2];	$r133 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r132[0] = $r133;	$i46 = <com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer: int SERIALIZED_VERSION>;	$r134 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i46);	$r132[1] = $r134;	r140 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r135, "Could not deserialize ATN with version %d (expected %d).", $r132);	$r180 = new java.lang.UnsupportedOperationException;	$r179 = new java.io.InvalidClassException;	$r138 = class "Lcom/github/jknack/handlebars/internal/antlr/atn/ATN;";	$r139 = virtualinvoke $r138.<java.lang.Class: java.lang.String getName()>();	specialinvoke $r179.<java.io.InvalidClassException: void <init>(java.lang.String,java.lang.String)>($r139, r140);	specialinvoke $r180.<java.lang.UnsupportedOperationException: void <init>(java.lang.Throwable)>($r179);	throw $r180
;block_num 2