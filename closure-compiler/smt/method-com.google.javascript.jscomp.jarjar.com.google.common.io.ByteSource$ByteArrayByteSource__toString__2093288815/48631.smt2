(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3905 0)
(declare-sort var577 0)
(declare-sort var1021 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var577_base16/162062877 () var577)
(declare-fun bytes/1815821839 (var3905) (Array Int Int))
(declare-fun offset/1815821839 (var3905) Int)
(declare-fun length/1815821839 (var3905) Int)
(declare-fun encode/39851302 (var577 (Array Int Int) Int Int) String)
(declare-fun var1021_truncate/775004463 (String Int String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3905 var3905)
(declare-const var587 var3905) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ByteArrayByteSource 
(assert (not (= var587 null-var3905)))
(define-const var2147 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2147)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2147!1 String)
(assert (= var2147!1 ""))
(assert true)
(define-const var1285 String (append/672562846 var2147!1 "ByteSource.wrap(")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ByteSource.wrap(") 
(declare-const var2147!2 String)
(assert (= var2147!2 (str.++ var2147!1 "ByteSource.wrap(")))
(define-const var2936 var577 var577_base16/162062877) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding base16()>() 
(define-const var2504 (Array Int Int) (bytes/1815821839 var587)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ByteArrayByteSource: byte[] bytes> 
(define-const var1554 Int (offset/1815821839 var587)) ; Statement: $i1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ByteArrayByteSource: int offset> 
(define-const var2496 Int (length/1815821839 var587)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ByteArrayByteSource: int length> 
(assert true)
(define-const var3711 String (encode/39851302 var2936 var2504 var1554 var2496)) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: java.lang.String encode(byte[],int,int)>($r2, $i1, $i0) 
(define-const var2806 String (var1021_truncate/775004463 (cast-from-String-to-String var3711) 30 "...")) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String truncate(java.lang.CharSequence,int,java.lang.String)>($r4, 30, "...") 
(assert true)
(define-const var1145 String (append/672562846 var1285 var2806)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1285!1 String)
(assert (= var1285!1 (str.++ var1285 var2806)))
(assert true)
(define-const var282 String (append/672562846 var1145 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1145!1 String)
(assert (= var1145!1 (str.++ var1145 ")")))
(assert true)
(define-const var3048 String (toString/-2075883882 var282)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var577_base16/162062877=([], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding), bytes/1815821839=([com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ByteArrayByteSource], byte[]), offset/1815821839=([com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ByteArrayByteSource], int), length/1815821839=([com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ByteArrayByteSource], int), encode/39851302=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding, byte[], int, int], java.lang.String), var1021_truncate/775004463=([java.lang.CharSequence, int, java.lang.String], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3905=com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ByteArrayByteSource, var587=r1, var2147=$r0, var1285=$r6, var577=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding, var2936=$r3, var2504=$r2, var1554=$i1, var2496=$i0, var3711=$r4, var1021=com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii, var2806=$r5, var1145=$r7, var282=$r8, var3048=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ByteArrayByteSource=var3905, r1=var587, $r0=var2147, $r6=var1285, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding=var577, $r3=var2936, $r2=var2504, $i1=var1554, $i0=var2496, $r4=var3711, com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii=var1021, $r5=var2806, $r7=var1145, $r8=var282, $r9=var3048}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ByteArrayByteSource;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ByteSource.wrap(");	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding base16()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ByteArrayByteSource: byte[] bytes>;	$i1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ByteArrayByteSource: int offset>;	$i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ByteArrayByteSource: int length>;	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: java.lang.String encode(byte[],int,int)>($r2, $i1, $i0);	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String truncate(java.lang.CharSequence,int,java.lang.String)>($r4, 30, "...");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1