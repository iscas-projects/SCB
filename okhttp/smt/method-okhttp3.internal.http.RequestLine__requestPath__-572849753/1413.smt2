(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1855 0)
(declare-sort var689 0)
(declare-sort var3696 0)
(declare-sort var2027 0)
(declare-sort var2732 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3696_checkNotNullParameter/-2060636419 (var2027 String) void)
(declare-fun cast-from-var689-to-var2027 (var689) var2027)
(declare-fun encodedPath/1022522259 (var689) String)
(declare-fun encodedQuery/-766324102 (var689) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1855 var1855)
(declare-const null-var689 var689)
(declare-const null-String String)
(declare-const var1424 var1855) ; Statement: r7 := @this: okhttp3.internal.http.RequestLine 
(assert (not (= var1424 null-var1855)))
(declare-const var475 var689) ; Statement: r0 := @parameter0: okhttp3.HttpUrl 
(assert (not (= var475 null-var689)))
;(assert (var3696_checkNotNullParameter/-2060636419 (cast-from-var689-to-var2027 var475) "url")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "url") 

(declare-const var475!1 var689)
(declare-const var1246 String)
(assert true)
(define-const var1879 String (encodedPath/1022522259 var475!1)) ; Statement: r1 = virtualinvoke r0.<okhttp3.HttpUrl: java.lang.String encodedPath()>() 
(assert true)
(define-const var1545 String (encodedQuery/-766324102 var475!1)) ; Statement: r2 = virtualinvoke r0.<okhttp3.HttpUrl: java.lang.String encodedQuery()>() 
 ; Statement: if r2 == null goto $r8 = r1 
(assert (not (= var1545 null-String))) ; Negate: Cond: r2 == null  
(define-const var898 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var898)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var898!1 String)
(assert (= var898!1 ""))
(assert true)
(define-const var1065 String (append/672562846 var898!1 var1879)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var898!2 String)
(assert (= var898!2 (str.++ var898!1 var1879)))
(assert true)
(define-const var2603 String (append/-1166366385 var1065 63)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(63) 
(declare-const var1065!1 String)
(assert (str.prefixof var1065 var1065!1))
(assert true)
(define-const var2793 String (append/672562846 var2603 var1545)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2603!1 String)
(assert (= var2603!1 (str.++ var2603 var1545)))
(assert true)
(define-const var2722 String (toString/-2075883882 var2793)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r8] 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3696_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var689-to-var2027=([okhttp3.HttpUrl], java.lang.Object), encodedPath/1022522259=([okhttp3.HttpUrl], java.lang.String), encodedQuery/-766324102=([okhttp3.HttpUrl], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1855=okhttp3.internal.http.RequestLine, var1424=r7, var689=okhttp3.HttpUrl, var475=r0, var3696=kotlin.jvm.internal.Intrinsics, var2027=java.lang.Object, var1246="url", var1879=r1, var1545=r2, var2732=null_type, var898=$r3, var1065=$r4, var2603=$r5, var2793=$r6, var2722=$r8}
; {okhttp3.internal.http.RequestLine=var1855, r7=var1424, okhttp3.HttpUrl=var689, r0=var475, kotlin.jvm.internal.Intrinsics=var3696, java.lang.Object=var2027, "url"=var1246, r1=var1879, r2=var1545, null_type=var2732, $r3=var898, $r4=var1065, $r5=var2603, $r6=var2793, $r8=var2722}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: okhttp3.internal.http.RequestLine;	r0 := @parameter0: okhttp3.HttpUrl;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "url");	r1 = virtualinvoke r0.<okhttp3.HttpUrl: java.lang.String encodedPath()>();	r2 = virtualinvoke r0.<okhttp3.HttpUrl: java.lang.String encodedQuery()>();	if r2 == null goto $r8 = r1;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(63);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r8];	return $r8
;block_num 3