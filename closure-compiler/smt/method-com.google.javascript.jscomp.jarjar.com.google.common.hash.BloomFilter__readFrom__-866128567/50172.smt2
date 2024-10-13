(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var75 0)
(declare-sort var1493 0)
(declare-sort var1788 0)
(declare-sort var2924 0)
(declare-sort var1387 0)
(declare-sort var523 0)
(declare-sort var3373 0)
(declare-sort var2576 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1788_checkNotNull/909222700 (var2924 var2924) var2924)
(declare-fun cast-from-var75-to-var2924 (var75) var2924)
(declare-fun cast-from-String-to-var2924 (String) var2924)
(declare-fun cast-from-var1493-to-var2924 (var1493) var2924)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1387-init () var1387)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3373-init () var3373)
(declare-fun <init>/-252871109 (var3373 String var2576) void)
(declare-fun cast-from-var523-to-var2576 (var523) var2576)
(declare-const null-var75 var75)
(declare-const null-var1493 var1493)
(declare-const null-var523 var523)
(declare-const var3886 var75) ; Statement: r0 := @parameter0: java.io.InputStream 
(assert (not (= var3886 null-var75)))
(declare-const var3480 var1493) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel 
(assert (not (= var3480 null-var1493)))
;(assert (var1788_checkNotNull/909222700 (cast-from-var75-to-var2924 var3886) (cast-from-String-to-var2924 "InputStream"))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object,java.lang.Object)>(r0, "InputStream") 

(declare-const var3886!1 var75)
(declare-const var3907 String)
;(assert (var1788_checkNotNull/909222700 (cast-from-var1493-to-var2924 var3480) (cast-from-String-to-var2924 "Funnel"))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object,java.lang.Object)>(r1, "Funnel") 

(declare-const var3480!1 var1493)
(declare-const var3 String)
(define-const var198 Int (- 1)) ; Statement: b4 = -1 
(define-const var894 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
(define-const var2698 Int var894) ; Statement: i5 = $i9 
(define-const var1139 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
(define-const var626 Int var1139) ; Statement: i6 = $i11 
(define-const var618 var1387 var1387-init) ; Statement: $r17 = new java.io.DataInputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3961 var523) ; Statement: $r6 := @caughtexception 
(assert (not (= var3961 null-var523)))
(define-const var1607 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1607)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1607!1 String)
(assert (= var1607!1 ""))
(assert true)
(define-const var2533 String (append/672562846 var1607!1 "Unable to deserialize BloomFilter from InputStream. strategyOrdinal: ")) ; Statement: $r8 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to deserialize BloomFilter from InputStream. strategyOrdinal: ") 
(declare-const var1607!2 String)
(assert (= var1607!2 (str.++ var1607!1 "Unable to deserialize BloomFilter from InputStream. strategyOrdinal: ")))
(define-const var176 Int (cast-from-Int-to-Int var198)) ; Statement: $i13 = (int) b4 
(assert true)
(define-const var2329 String (append/-1001720160 var2533 var176)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i13) 
(declare-const var2533!1 String)
(assert (str.prefixof var2533 var2533!1))
(assert true)
(define-const var3032 String (append/672562846 var2329 " numHashFunctions: ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" numHashFunctions: ") 
(declare-const var2329!1 String)
(assert (= var2329!1 (str.++ var2329 " numHashFunctions: ")))
(assert true)
(define-const var3985 String (append/-1001720160 var3032 var2698)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5) 
(declare-const var3032!1 String)
(assert (str.prefixof var3032 var3032!1))
(assert true)
(define-const var1398 String (append/672562846 var3985 " dataLength: ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" dataLength: ") 
(declare-const var3985!1 String)
(assert (= var3985!1 (str.++ var3985 " dataLength: ")))
(assert true)
(define-const var1615 String (append/-1001720160 var1398 var626)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6) 
(declare-const var1398!1 String)
(assert (str.prefixof var1398 var1398!1))
(assert true)
(define-const var2540 String (toString/-2075883882 var1615)) ; Statement: r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3473 var3373 var3373-init) ; Statement: $r21 = new java.io.IOException 
(assert true)
;(assert (<init>/-252871109 var3473 var2540 (cast-from-var523-to-var2576 var3961))) ; Statement: specialinvoke $r21.<java.io.IOException: void <init>(java.lang.String,java.lang.Throwable)>(r16, $r6) 

(declare-const var3473!1 var3373)
(declare-const var2540!1 String)
(declare-const var3961!1 var523)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {var1788_checkNotNull/909222700=([java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var75-to-var2924=([java.io.InputStream], java.lang.Object), cast-from-String-to-var2924=([java.lang.String], java.lang.Object), cast-from-var1493-to-var2924=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel], java.lang.Object), cast-from-Int-to-Int=([int], int), var1387-init=([], java.io.DataInputStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3373-init=([], java.io.IOException), <init>/-252871109=([java.io.IOException, java.lang.String, java.lang.Throwable], void), cast-from-var523-to-var2576=([java.lang.RuntimeException], java.lang.Throwable)}
; {var75=java.io.InputStream, var3886=r0, var1493=com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel, var3480=r1, var1788=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2924=java.lang.Object, var3907="InputStream", var3="Funnel", var198=b4, var894=$i9, var2698=i5, var1139=$i11, var626=i6, var1387=java.io.DataInputStream, var618=$r17, var523=java.lang.RuntimeException, var3961=$r6, var1607=$r20, var2533=$r8, var176=$i13, var2329=$r9, var3032=$r10, var3985=$r11, var1398=$r12, var1615=$r13, var2540=r16, var3373=java.io.IOException, var3473=$r21, var2576=java.lang.Throwable}
; {java.io.InputStream=var75, r0=var3886, com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel=var1493, r1=var3480, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1788, java.lang.Object=var2924, "InputStream"=var3907, "Funnel"=var3, b4=var198, $i9=var894, i5=var2698, $i11=var1139, i6=var626, java.io.DataInputStream=var1387, $r17=var618, java.lang.RuntimeException=var523, $r6=var3961, $r20=var1607, $r8=var2533, $i13=var176, $r9=var2329, $r10=var3032, $r11=var3985, $r12=var1398, $r13=var1615, r16=var2540, java.io.IOException=var3373, $r21=var3473, java.lang.Throwable=var2576}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.InputStream;	r1 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object,java.lang.Object)>(r0, "InputStream");	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object,java.lang.Object)>(r1, "Funnel");	b4 = -1;	$i9 = (int) -1;	i5 = $i9;	$i11 = (int) -1;	i6 = $i11;	$r17 = new java.io.DataInputStream;	$r6 := @caughtexception;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to deserialize BloomFilter from InputStream. strategyOrdinal: ");	$i13 = (int) b4;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i13);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" numHashFunctions: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" dataLength: ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6);	r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = new java.io.IOException;	specialinvoke $r21.<java.io.IOException: void <init>(java.lang.String,java.lang.Throwable)>(r16, $r6);	throw $r21
;block_num 2