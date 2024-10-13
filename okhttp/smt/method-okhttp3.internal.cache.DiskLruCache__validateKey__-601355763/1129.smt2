(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1449 0)
(declare-sort var295 0)
(declare-sort var3031 0)
(declare-sort var2811 0)
(declare-sort var2306 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/1556496682 (var3031 String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2811-init () var2811)
(declare-fun toString/-522406933 (var2306) String)
(declare-fun cast-from-String-to-var2306 (String) var2306)
(declare-fun <init>/875830710 (var2811 String) void)
(declare-const null-var1449 var1449)
(declare-const null-String String)
(declare-const var1449-LEGAL_KEY_PATTERN var3031)
(declare-const var2072 var1449) ; Statement: r9 := @this: okhttp3.internal.cache.DiskLruCache 
(assert (not (= var2072 null-var1449)))
(declare-const var2194 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2194 null-String)))
(define-const var887 var3031 var1449-LEGAL_KEY_PATTERN) ; Statement: $r2 = <okhttp3.internal.cache.DiskLruCache: kotlin.text.Regex LEGAL_KEY_PATTERN> 
(define-const var1114 String (cast-from-String-to-String var2194)) ; Statement: $r1 = (java.lang.CharSequence) r0 
(assert true)
(define-const var1432 Bool (matches/1556496682 var887 var1114)) ; Statement: $z0 = virtualinvoke $r2.<kotlin.text.Regex: boolean matches(java.lang.CharSequence)>($r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var1432 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2115 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2115)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2115!1 String)
(assert (= var2115!1 ""))
(assert true)
(define-const var747 String (append/672562846 var2115!1 "keys must match regex [a-z0-9_-]{1,120}: \u0022")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("keys must match regex [a-z0-9_-]{1,120}: \"") 
(declare-const var2115!2 String)
(assert (= var2115!2 (str.++ var2115!1 "keys must match regex [a-z0-9_-]{1,120}: \u0022")))
(assert true)
(define-const var136 String (append/672562846 var747 var2194)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var747!1 String)
(assert (= var747!1 (str.++ var747 var2194)))
(assert true)
(define-const var2903 String (append/-1166366385 var136 34)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var136!1 String)
(assert (str.prefixof var136 var136!1))
(assert true)
(define-const var660 String (toString/-2075883882 var2903)) ; Statement: $r10 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2230 var2811 var2811-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var237 String (toString/-522406933 (cast-from-String-to-var2306 var660))) ; Statement: $r8 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2230 var237)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2230!1 var2811)
(declare-const var237!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/1556496682=([kotlin.text.Regex, java.lang.CharSequence], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2811-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var2306=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1449=okhttp3.internal.cache.DiskLruCache, var2072=r9, var2194=r0, var295=null_type, var3031=kotlin.text.Regex, var887=$r2, var1114=$r1, var1432=$z0, var2115=$r3, var747=$r4, var136=$r5, var2903=$r6, var660=$r10, var2811=java.lang.IllegalArgumentException, var2230=$r7, var2306=java.lang.Object, var237=$r8}
; {okhttp3.internal.cache.DiskLruCache=var1449, r9=var2072, r0=var2194, null_type=var295, kotlin.text.Regex=var3031, $r2=var887, $r1=var1114, $z0=var1432, $r3=var2115, $r4=var747, $r5=var136, $r6=var2903, $r10=var660, java.lang.IllegalArgumentException=var2811, $r7=var2230, java.lang.Object=var2306, $r8=var237}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: okhttp3.internal.cache.DiskLruCache;	r0 := @parameter0: java.lang.String;	$r2 = <okhttp3.internal.cache.DiskLruCache: kotlin.text.Regex LEGAL_KEY_PATTERN>;	$r1 = (java.lang.CharSequence) r0;	$z0 = virtualinvoke $r2.<kotlin.text.Regex: boolean matches(java.lang.CharSequence)>($r1);	if $z0 != 0 goto return;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("keys must match regex [a-z0-9_-]{1,120}: \"");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r10 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.lang.IllegalArgumentException;	$r8 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r7
;block_num 2