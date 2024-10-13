(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3835 0)
(declare-sort var3110 0)
(declare-sort var3782 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun sources/-228613801 (var3835) var3110)
(declare-fun append/-1031950772 (String var3782) String)
(declare-fun cast-from-var3110-to-var3782 (var3110) var3782)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3835 var3835)
(declare-const var3673 var3835) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ConcatenatedByteSource 
(assert (not (= var3673 null-var3835)))
(define-const var3486 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3486)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3486!1 String)
(assert (= var3486!1 ""))
(assert true)
(define-const var3427 String (append/672562846 var3486!1 "ByteSource.concat(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ByteSource.concat(") 
(declare-const var3486!2 String)
(assert (= var3486!2 (str.++ var3486!1 "ByteSource.concat(")))
(define-const var2908 var3110 (sources/-228613801 var3673)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ConcatenatedByteSource: java.lang.Iterable sources> 
(assert true)
(define-const var1288 String (append/-1031950772 var3427 (cast-from-var3110-to-var3782 var2908))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3427!1 String)
(assert (str.prefixof var3427 var3427!1))
(assert true)
(define-const var3934 String (append/672562846 var1288 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1288!1 String)
(assert (= var1288!1 (str.++ var1288 ")")))
(assert true)
(define-const var1192 String (toString/-2075883882 var3934)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), sources/-228613801=([com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ConcatenatedByteSource], java.lang.Iterable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3110-to-var3782=([java.lang.Iterable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3835=com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ConcatenatedByteSource, var3673=r1, var3486=$r0, var3427=$r3, var3110=java.lang.Iterable, var2908=$r2, var3782=java.lang.Object, var1288=$r4, var3934=$r5, var1192=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ConcatenatedByteSource=var3835, r1=var3673, $r0=var3486, $r3=var3427, java.lang.Iterable=var3110, $r2=var2908, java.lang.Object=var3782, $r4=var1288, $r5=var3934, $r6=var1192}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ConcatenatedByteSource;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ByteSource.concat(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$ConcatenatedByteSource: java.lang.Iterable sources>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1