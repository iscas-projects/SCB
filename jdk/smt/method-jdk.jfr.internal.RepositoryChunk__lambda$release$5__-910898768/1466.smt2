(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1525464609 (var1324) String)
(declare-fun refCount/1653940871 (var1324) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1324 var1324)
(declare-const var2354 var1324) ; Statement: r1 := @this: jdk.jfr.internal.RepositoryChunk 
(assert (not (= var2354 null-var1324)))
(define-const var927 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var927)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var927!1 String)
(assert (= var927!1 ""))
(assert true)
(define-const var2512 String (append/672562846 var927!1 "Release chunk ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Release chunk ") 
(declare-const var927!2 String)
(assert (= var927!2 (str.++ var927!1 "Release chunk ")))
(assert true)
(define-const var755 String (toString/-1525464609 var2354)) ; Statement: $r2 = virtualinvoke r1.<jdk.jfr.internal.RepositoryChunk: java.lang.String toString()>() 
(assert true)
(define-const var3181 String (append/672562846 var2512 var755)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2512!1 String)
(assert (= var2512!1 (str.++ var2512 var755)))
(assert true)
(define-const var2234 String (append/672562846 var3181 " ref count now ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ref count now ") 
(declare-const var3181!1 String)
(assert (= var3181!1 (str.++ var3181 " ref count now ")))
(define-const var131 Int (refCount/1653940871 var2354)) ; Statement: $i0 = r1.<jdk.jfr.internal.RepositoryChunk: int refCount> 
(assert true)
(define-const var219 String (append/-1001720160 var2234 var131)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2234!1 String)
(assert (str.prefixof var2234 var2234!1))
(assert true)
(define-const var1968 String (toString/-2075883882 var219)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1525464609=([jdk.jfr.internal.RepositoryChunk], java.lang.String), refCount/1653940871=([jdk.jfr.internal.RepositoryChunk], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1324=jdk.jfr.internal.RepositoryChunk, var2354=r1, var927=$r0, var2512=$r3, var755=$r2, var3181=$r4, var2234=$r5, var131=$i0, var219=$r6, var1968=$r7}
; {jdk.jfr.internal.RepositoryChunk=var1324, r1=var2354, $r0=var927, $r3=var2512, $r2=var755, $r4=var3181, $r5=var2234, $i0=var131, $r6=var219, $r7=var1968}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.jfr.internal.RepositoryChunk: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.RepositoryChunk;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Release chunk ");	$r2 = virtualinvoke r1.<jdk.jfr.internal.RepositoryChunk: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ref count now ");	$i0 = r1.<jdk.jfr.internal.RepositoryChunk: int refCount>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1