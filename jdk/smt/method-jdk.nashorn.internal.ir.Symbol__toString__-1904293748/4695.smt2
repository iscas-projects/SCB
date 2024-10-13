(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3287 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/-785660172 (var3287) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun hasSlot/880220019 (var3287) Bool)
(declare-fun isScope/-319537503 (var3287) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3287 var3287)
(declare-const var2047 var3287) ; Statement: r1 := @this: jdk.nashorn.internal.ir.Symbol 
(assert (not (= var2047 null-var3287)))
(define-const var858 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var858)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var858!1 String)
(assert (= var858!1 ""))
(define-const var2209 String (name/-785660172 var2047)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.Symbol: java.lang.String name> 
(assert true)
(define-const var2264 String (append/672562846 var858!1 var2209)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var858!2 String)
(assert (= var858!2 (str.++ var858!1 var2209)))
(assert true)
;(assert (append/-1166366385 var2264 32)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2264!1 String)
(assert (str.prefixof var2264 var2264!1))
(assert true)
(define-const var3258 Bool (hasSlot/880220019 var2047)) ; Statement: $z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean hasSlot()>() 
 ; Statement: if $z0 == 0 goto $z2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isScope()>() 
(assert (= (ite var3258 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3807 Bool (isScope/-319537503 var2047)) ; Statement: $z2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isScope()>() 
 ; Statement: if $z2 == 0 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3807 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2289 String (toString/-2075883882 var858!2)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/-785660172=([jdk.nashorn.internal.ir.Symbol], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), hasSlot/880220019=([jdk.nashorn.internal.ir.Symbol], boolean), isScope/-319537503=([jdk.nashorn.internal.ir.Symbol], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3287=jdk.nashorn.internal.ir.Symbol, var2047=r1, var858=$r0, var2209=$r2, var2264=$r3, var3258=$z0, var3807=$z2, var2289=$r8}
; {jdk.nashorn.internal.ir.Symbol=var3287, r1=var2047, $r0=var858, $r2=var2209, $r3=var2264, $z0=var3258, $z2=var3807, $r8=var2289}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.Symbol;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<jdk.nashorn.internal.ir.Symbol: java.lang.String name>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean hasSlot()>();	if $z0 == 0 goto $z2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isScope()>();	$z2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isScope()>();	if $z2 == 0 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3