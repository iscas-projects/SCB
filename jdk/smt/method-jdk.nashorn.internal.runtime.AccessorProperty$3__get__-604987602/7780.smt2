(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1952 0)
(declare-sort var661 0)
(declare-sort var2470 0)
(declare-sort var3181 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/428725450 (var1952) var661)
(declare-fun getKey/-1967431913 (var2470) String)
(declare-fun cast-from-var661-to-var2470 (var661) var2470)
(declare-fun val$oldType/428725450 (var1952) ClassObject)
(declare-fun append/-1031950772 (String var3181) String)
(declare-fun cast-from-ClassObject-to-var3181 (ClassObject) var3181)
(declare-fun val$newType/428725450 (var1952) ClassObject)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1952 var1952)
(declare-const var368 var1952) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.AccessorProperty$3 
(assert (not (= var368 null-var1952)))
(define-const var2346 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2346)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2346!1 String)
(assert (= var2346!1 ""))
(assert true)
(define-const var2971 String (append/672562846 var2346!1 "Type change for \u0027")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type change for \'") 
(declare-const var2346!2 String)
(assert (= var2346!2 (str.++ var2346!1 "Type change for \u0027")))
(define-const var3335 var661 (this$0/428725450 var368)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.AccessorProperty$3: jdk.nashorn.internal.runtime.AccessorProperty this$0> 
(assert true)
(define-const var1094 String (getKey/-1967431913 (cast-from-var661-to-var2470 var3335))) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.String getKey()>() 
(assert true)
(define-const var853 String (append/672562846 var2971 var1094)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2971!1 String)
(assert (= var2971!1 (str.++ var2971 var1094)))
(assert true)
(define-const var3943 String (append/672562846 var853 "\u0027 ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' ") 
(declare-const var853!1 String)
(assert (= var853!1 (str.++ var853 "\u0027 ")))
(define-const var2564 ClassObject (val$oldType/428725450 var368)) ; Statement: $r6 = r1.<jdk.nashorn.internal.runtime.AccessorProperty$3: java.lang.Class val$oldType> 
(assert true)
(define-const var1119 String (append/-1031950772 var3943 (cast-from-ClassObject-to-var3181 var2564))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var3943!1 String)
(assert (str.prefixof var3943 var3943!1))
(assert true)
(define-const var2150 String (append/672562846 var1119 "=>")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=>") 
(declare-const var1119!1 String)
(assert (= var1119!1 (str.++ var1119 "=>")))
(define-const var1650 ClassObject (val$newType/428725450 var368)) ; Statement: $r9 = r1.<jdk.nashorn.internal.runtime.AccessorProperty$3: java.lang.Class val$newType> 
(assert true)
(define-const var3101 String (append/-1031950772 var2150 (cast-from-ClassObject-to-var3181 var1650))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var2150!1 String)
(assert (str.prefixof var2150 var2150!1))
(assert true)
(define-const var594 String (toString/-2075883882 var3101)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/428725450=([jdk.nashorn.internal.runtime.AccessorProperty$3], jdk.nashorn.internal.runtime.AccessorProperty), getKey/-1967431913=([jdk.nashorn.internal.runtime.Property], java.lang.String), cast-from-var661-to-var2470=([jdk.nashorn.internal.runtime.AccessorProperty], jdk.nashorn.internal.runtime.Property), val$oldType/428725450=([jdk.nashorn.internal.runtime.AccessorProperty$3], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3181=([java.lang.Class], java.lang.Object), val$newType/428725450=([jdk.nashorn.internal.runtime.AccessorProperty$3], java.lang.Class), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1952=jdk.nashorn.internal.runtime.AccessorProperty$3, var368=r1, var2346=$r0, var2971=$r4, var661=jdk.nashorn.internal.runtime.AccessorProperty, var3335=$r2, var2470=jdk.nashorn.internal.runtime.Property, var1094=$r3, var853=$r5, var3943=$r7, var2564=$r6, var3181=java.lang.Object, var1119=$r8, var2150=$r10, var1650=$r9, var3101=$r11, var594=$r12}
; {jdk.nashorn.internal.runtime.AccessorProperty$3=var1952, r1=var368, $r0=var2346, $r4=var2971, jdk.nashorn.internal.runtime.AccessorProperty=var661, $r2=var3335, jdk.nashorn.internal.runtime.Property=var2470, $r3=var1094, $r5=var853, $r7=var3943, $r6=var2564, java.lang.Object=var3181, $r8=var1119, $r10=var2150, $r9=var1650, $r11=var3101, $r12=var594}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.AccessorProperty$3;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type change for \'");	$r2 = r1.<jdk.nashorn.internal.runtime.AccessorProperty$3: jdk.nashorn.internal.runtime.AccessorProperty this$0>;	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.String getKey()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' ");	$r6 = r1.<jdk.nashorn.internal.runtime.AccessorProperty$3: java.lang.Class val$oldType>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=>");	$r9 = r1.<jdk.nashorn.internal.runtime.AccessorProperty$3: java.lang.Class val$newType>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1