(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1878 0)
(declare-sort var1209 0)
(declare-sort var407 0)
(declare-sort var1236 0)
(declare-sort var419 0)
(declare-sort var3555 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var407_id/-2071121520 (var1236) String)
(declare-fun cast-from-var1878-to-var1236 (var1878) var1236)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-785660172 (var1878) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var419_err/-206875561 (String) void)
(declare-const null-var1878 var1878)
(declare-const null-String String)
(declare-const var1878-TRACE_SYMBOLS_STACKTRACE var3555)
(declare-const null-var3555 var3555)
(declare-const var3464 var1878) ; Statement: r1 := @this: jdk.nashorn.internal.ir.Symbol 
(assert (not (= var3464 null-var1878)))
(declare-const var2815 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var2815 null-String)))
(define-const var1376 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1376)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1376!1 String)
(assert (= var1376!1 ""))
(define-const var182 String (var407_id/-2071121520 (cast-from-var1878-to-var1236 var3464))) ; Statement: $r2 = staticinvoke <jdk.nashorn.internal.runtime.Debug: java.lang.String id(java.lang.Object)>(r1) 
(assert true)
(define-const var811 String (append/672562846 var1376!1 var182)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1376!2 String)
(assert (= var1376!2 (str.++ var1376!1 var182)))
(assert true)
(define-const var725 String (append/672562846 var811 " SYMBOL: \u0027")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" SYMBOL: \'") 
(declare-const var811!1 String)
(assert (= var811!1 (str.++ var811 " SYMBOL: \u0027")))
(define-const var1244 String (name/-785660172 var3464)) ; Statement: $r4 = r1.<jdk.nashorn.internal.ir.Symbol: java.lang.String name> 
(assert true)
(define-const var3324 String (append/672562846 var725 var1244)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var725!1 String)
(assert (= var725!1 (str.++ var725 var1244)))
(assert true)
(define-const var1980 String (append/672562846 var3324 "\u0027 ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' ") 
(declare-const var3324!1 String)
(assert (= var3324!1 (str.++ var3324 "\u0027 ")))
(assert true)
(define-const var2847 String (append/672562846 var1980 var2815)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1980!1 String)
(assert (= var1980!1 (str.++ var1980 var2815)))
(assert true)
(define-const var1941 String (toString/-2075883882 var2847)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var419_err/-206875561 var1941)) ; Statement: staticinvoke <jdk.nashorn.internal.runtime.Context: void err(java.lang.String)>($r10) 

(declare-const var1941!1 String)
(define-const var3811 var3555 var1878-TRACE_SYMBOLS_STACKTRACE) ; Statement: $r11 = <jdk.nashorn.internal.ir.Symbol: java.util.Set TRACE_SYMBOLS_STACKTRACE> 
 ; Statement: if $r11 == null goto return 
(assert (= var3811 null-var3555)) ; Cond: $r11 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var407_id/-2071121520=([java.lang.Object], java.lang.String), cast-from-var1878-to-var1236=([jdk.nashorn.internal.ir.Symbol], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-785660172=([jdk.nashorn.internal.ir.Symbol], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var419_err/-206875561=([java.lang.String], void)}
; {var1878=jdk.nashorn.internal.ir.Symbol, var3464=r1, var2815=r7, var1209=null_type, var1376=$r0, var407=jdk.nashorn.internal.runtime.Debug, var1236=java.lang.Object, var182=$r2, var811=$r3, var725=$r5, var1244=$r4, var3324=$r6, var1980=$r8, var2847=$r9, var1941=$r10, var419=jdk.nashorn.internal.runtime.Context, var3555=java.util.Set, var3811=$r11}
; {jdk.nashorn.internal.ir.Symbol=var1878, r1=var3464, r7=var2815, null_type=var1209, $r0=var1376, jdk.nashorn.internal.runtime.Debug=var407, java.lang.Object=var1236, $r2=var182, $r3=var811, $r5=var725, $r4=var1244, $r6=var3324, $r8=var1980, $r9=var2847, $r10=var1941, jdk.nashorn.internal.runtime.Context=var419, java.util.Set=var3555, $r11=var3811}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.Symbol;	r7 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <jdk.nashorn.internal.runtime.Debug: java.lang.String id(java.lang.Object)>(r1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" SYMBOL: \'");	$r4 = r1.<jdk.nashorn.internal.ir.Symbol: java.lang.String name>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.nashorn.internal.runtime.Context: void err(java.lang.String)>($r10);	$r11 = <jdk.nashorn.internal.ir.Symbol: java.util.Set TRACE_SYMBOLS_STACKTRACE>;	if $r11 == null goto return;	return
;block_num 2