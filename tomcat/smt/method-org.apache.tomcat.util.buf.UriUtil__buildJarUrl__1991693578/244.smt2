(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3093 0)
(declare-sort var3304 0)
(declare-sort var2616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3304_makeSafeForJarUrl/-1734159778 (String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2616-init () var2616)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun <init>/1884135189 (var2616 String String Int String) void)
(declare-const null-String String)
(declare-const null-NullType var3093)
(declare-const var566 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var566 null-String)))
(declare-const var332 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var332 null-String)))
(define-const var1134 String (var3304_makeSafeForJarUrl/-1734159778 var566)) ; Statement: r1 = staticinvoke <org.apache.tomcat.util.buf.UriUtil: java.lang.String makeSafeForJarUrl(java.lang.String)>(r0) 
(define-const var3449 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3449)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3449!1 String)
(assert (= var3449!1 ""))
(assert true)
;(assert (append/672562846 var3449!1 var1134)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3449!2 String)
(assert (= var3449!2 (str.++ var3449!1 var1134)))
(assert true)
;(assert (append/672562846 var3449!2 "!/")) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!/") 
(declare-const var3449!3 String)
(assert (= var3449!3 (str.++ var3449!2 "!/")))
 ; Statement: if r3 == null goto $r8 = new java.net.URL 
(assert (= var332 null-String)) ; Cond: r3 == null 
(define-const var1301 var2616 var2616-init) ; Statement: $r8 = new java.net.URL 
(assert true)
(define-const var1896 String (toString/-2075883882 var3449!3)) ; Statement: $r5 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1068 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i1 = (int) -1 
(assert true)
;(assert (<init>/1884135189 var1301 "jar" null-String var1068 var1896)) ; Statement: specialinvoke $r8.<java.net.URL: void <init>(java.lang.String,java.lang.String,int,java.lang.String)>("jar", null, $i1, $r5) 

(declare-const var1301!1 var2616)
(declare-const var8 String)
(declare-const var3550 var3093)
(declare-const var1068!1 Int)
(declare-const var1896!1 String)
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3304_makeSafeForJarUrl/-1734159778=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2616-init=([], java.net.URL), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-Int-to-Int=([int], int), <init>/1884135189=([java.net.URL, java.lang.String, java.lang.String, int, java.lang.String], void)}
; {var566=r0, var3093=null_type, var332=r3, var3304=org.apache.tomcat.util.buf.UriUtil, var1134=r1, var3449=$r7, var2616=java.net.URL, var1301=$r8, var1896=$r5, var1068=$i1, var8="jar", var3550=null}
; {r0=var566, null_type=var3093, r3=var332, org.apache.tomcat.util.buf.UriUtil=var3304, r1=var1134, $r7=var3449, java.net.URL=var2616, $r8=var1301, $r5=var1896, $i1=var1068, "jar"=var8, null=var3550}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r1 = staticinvoke <org.apache.tomcat.util.buf.UriUtil: java.lang.String makeSafeForJarUrl(java.lang.String)>(r0);	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!/");	if r3 == null goto $r8 = new java.net.URL;	$r8 = new java.net.URL;	$r5 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$i1 = (int) -1;	specialinvoke $r8.<java.net.URL: void <init>(java.lang.String,java.lang.String,int,java.lang.String)>("jar", null, $i1, $r5);	return $r8
;block_num 2