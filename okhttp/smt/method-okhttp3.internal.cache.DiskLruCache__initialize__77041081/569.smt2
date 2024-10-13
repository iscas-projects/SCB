(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2230 0)
(declare-sort var3993 0)
(declare-sort var3491 0)
(declare-sort var405 0)
(declare-sort var1145 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3491_holdsLock/-145342167 (var405) Bool)
(declare-fun cast-from-var2230-to-var405 (var2230) var405)
(declare-fun var1145-init () var1145)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3491_currentThread/-1037784612 () var3491)
(declare-fun getName/-942182377 (var3491) String)
(declare-fun append/-1031950772 (String var405) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var1145 var405) void)
(declare-fun cast-from-String-to-var405 (String) var405)
(declare-const null-var2230 var2230)
(declare-const var3993-assertionsEnabled Bool)
(declare-const var2139 var2230) ; Statement: r0 := @this: okhttp3.internal.cache.DiskLruCache 
(assert (not (= var2139 null-var2230)))
(define-const var2157 Bool var3993-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $z1 = r0.<okhttp3.internal.cache.DiskLruCache: boolean initialized> 
(assert (not (= (ite var2157 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var260 Bool (var3491_holdsLock/-145342167 (cast-from-var2230-to-var405 var2139))) ; Statement: $z4 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0) 
 ; Statement: if $z4 != 0 goto $z1 = r0.<okhttp3.internal.cache.DiskLruCache: boolean initialized> 
(assert (not (not (= (ite var260 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var3745 var1145 var1145-init) ; Statement: $r10 = new java.lang.AssertionError 
(define-const var577 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var577)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var577!1 String)
(assert (= var577!1 ""))
(assert true)
(define-const var3430 String (append/672562846 var577!1 "Thread ")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var577!2 String)
(assert (= var577!2 (str.++ var577!1 "Thread ")))
(define-const var3725 var3491 var3491_currentThread/-1037784612) ; Statement: $r12 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var3570 String (getName/-942182377 var3725)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var698 String (append/672562846 var3430 var3570)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3430!1 String)
(assert (= var3430!1 (str.++ var3430 var3570)))
(assert true)
(define-const var2386 String (append/672562846 var698 " MUST hold lock on ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ") 
(declare-const var698!1 String)
(assert (= var698!1 (str.++ var698 " MUST hold lock on ")))
(assert true)
(define-const var2373 String (append/-1031950772 var2386 (cast-from-var2230-to-var405 var2139))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2386!1 String)
(assert (str.prefixof var2386 var2386!1))
(assert true)
(define-const var1408 String (toString/-2075883882 var2373)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var3745 (cast-from-String-to-var405 var1408))) ; Statement: specialinvoke $r10.<java.lang.AssertionError: void <init>(java.lang.Object)>($r18) 

(declare-const var3745!1 var1145)
(declare-const var1408!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var3491_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var2230-to-var405=([okhttp3.internal.cache.DiskLruCache], java.lang.Object), var1145-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3491_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var405=([java.lang.String], java.lang.Object)}
; {var2230=okhttp3.internal.cache.DiskLruCache, var2139=r0, var3993=okhttp3.internal.Util, var2157=$z0, var3491=java.lang.Thread, var405=java.lang.Object, var260=$z4, var1145=java.lang.AssertionError, var3745=$r10, var577=$r11, var3430=$r14, var3725=$r12, var3570=$r13, var698=$r15, var2386=$r16, var2373=$r17, var1408=$r18}
; {okhttp3.internal.cache.DiskLruCache=var2230, r0=var2139, okhttp3.internal.Util=var3993, $z0=var2157, java.lang.Thread=var3491, java.lang.Object=var405, $z4=var260, java.lang.AssertionError=var1145, $r10=var3745, $r11=var577, $r14=var3430, $r12=var3725, $r13=var3570, $r15=var698, $r16=var2386, $r17=var2373, $r18=var1408}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.cache.DiskLruCache;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $z1 = r0.<okhttp3.internal.cache.DiskLruCache: boolean initialized>;	$z4 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0);	if $z4 != 0 goto $z1 = r0.<okhttp3.internal.cache.DiskLruCache: boolean initialized>;	$r10 = new java.lang.AssertionError;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r12 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r13 = virtualinvoke $r12.<java.lang.Thread: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.AssertionError: void <init>(java.lang.Object)>($r18);	throw $r10
;block_num 3