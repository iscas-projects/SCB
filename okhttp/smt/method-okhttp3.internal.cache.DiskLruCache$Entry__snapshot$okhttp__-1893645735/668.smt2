(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1989 0)
(declare-sort var1220 0)
(declare-sort var87 0)
(declare-sort var2633 0)
(declare-sort var2812 0)
(declare-sort var2585 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-1756266820 (var1989) var1220)
(declare-fun var2633_holdsLock/-145342167 (var2812) Bool)
(declare-fun cast-from-var1220-to-var2812 (var1220) var2812)
(declare-fun var2585-init () var2585)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2633_currentThread/-1037784612 () var2633)
(declare-fun getName/-942182377 (var2633) String)
(declare-fun append/-1031950772 (String var2812) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var2585 var2812) void)
(declare-fun cast-from-String-to-var2812 (String) var2812)
(declare-const null-var1989 var1989)
(declare-const var87-assertionsEnabled Bool)
(declare-const var2938 var1989) ; Statement: r0 := @this: okhttp3.internal.cache.DiskLruCache$Entry 
(assert (not (= var2938 null-var1989)))
(define-const var966 var1220 (this$0/-1756266820 var2938)) ; Statement: $r29 = r0.<okhttp3.internal.cache.DiskLruCache$Entry: okhttp3.internal.cache.DiskLruCache this$0> 
(define-const var1721 Bool var87-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $z1 = r0.<okhttp3.internal.cache.DiskLruCache$Entry: boolean readable> 
(assert (not (= (ite var1721 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1389 Bool (var2633_holdsLock/-145342167 (cast-from-var1220-to-var2812 var966))) ; Statement: $z4 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r29) 
 ; Statement: if $z4 != 0 goto $z1 = r0.<okhttp3.internal.cache.DiskLruCache$Entry: boolean readable> 
(assert (not (not (= (ite var1389 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var3817 var2585 var2585-init) ; Statement: $r14 = new java.lang.AssertionError 
(define-const var2738 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2738)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2738!1 String)
(assert (= var2738!1 ""))
(assert true)
(define-const var2997 String (append/672562846 var2738!1 "Thread ")) ; Statement: $r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var2738!2 String)
(assert (= var2738!2 (str.++ var2738!1 "Thread ")))
(define-const var2504 var2633 var2633_currentThread/-1037784612) ; Statement: $r16 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var1729 String (getName/-942182377 var2504)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var2388 String (append/672562846 var2997 var1729)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2997!1 String)
(assert (= var2997!1 (str.++ var2997 var1729)))
(assert true)
(define-const var2700 String (append/672562846 var2388 " MUST hold lock on ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ") 
(declare-const var2388!1 String)
(assert (= var2388!1 (str.++ var2388 " MUST hold lock on ")))
(assert true)
(define-const var815 String (append/-1031950772 var2700 (cast-from-var1220-to-var2812 var966))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r29) 
(declare-const var2700!1 String)
(assert (str.prefixof var2700 var2700!1))
(assert true)
(define-const var1319 String (toString/-2075883882 var815)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var3817 (cast-from-String-to-var2812 var1319))) ; Statement: specialinvoke $r14.<java.lang.AssertionError: void <init>(java.lang.Object)>($r22) 

(declare-const var3817!1 var2585)
(declare-const var1319!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-1756266820=([okhttp3.internal.cache.DiskLruCache$Entry], okhttp3.internal.cache.DiskLruCache), var2633_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var1220-to-var2812=([okhttp3.internal.cache.DiskLruCache], java.lang.Object), var2585-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2633_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2812=([java.lang.String], java.lang.Object)}
; {var1989=okhttp3.internal.cache.DiskLruCache$Entry, var2938=r0, var1220=okhttp3.internal.cache.DiskLruCache, var966=$r29, var87=okhttp3.internal.Util, var1721=$z0, var2633=java.lang.Thread, var2812=java.lang.Object, var1389=$z4, var2585=java.lang.AssertionError, var3817=$r14, var2738=$r15, var2997=$r18, var2504=$r16, var1729=$r17, var2388=$r19, var2700=$r20, var815=$r21, var1319=$r22}
; {okhttp3.internal.cache.DiskLruCache$Entry=var1989, r0=var2938, okhttp3.internal.cache.DiskLruCache=var1220, $r29=var966, okhttp3.internal.Util=var87, $z0=var1721, java.lang.Thread=var2633, java.lang.Object=var2812, $z4=var1389, java.lang.AssertionError=var2585, $r14=var3817, $r15=var2738, $r18=var2997, $r16=var2504, $r17=var1729, $r19=var2388, $r20=var2700, $r21=var815, $r22=var1319}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.cache.DiskLruCache$Entry;	$r29 = r0.<okhttp3.internal.cache.DiskLruCache$Entry: okhttp3.internal.cache.DiskLruCache this$0>;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $z1 = r0.<okhttp3.internal.cache.DiskLruCache$Entry: boolean readable>;	$z4 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r29);	if $z4 != 0 goto $z1 = r0.<okhttp3.internal.cache.DiskLruCache$Entry: boolean readable>;	$r14 = new java.lang.AssertionError;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r16 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r17 = virtualinvoke $r16.<java.lang.Thread: java.lang.String getName()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r29);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.AssertionError: void <init>(java.lang.Object)>($r22);	throw $r14
;block_num 3