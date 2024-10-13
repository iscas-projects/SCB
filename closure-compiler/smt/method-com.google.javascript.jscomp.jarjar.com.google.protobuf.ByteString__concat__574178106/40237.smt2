(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2078 0)
(declare-sort var1457 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/716358372 (var2078) Int)
(declare-fun var1457-init () var1457)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1457 String) void)
(declare-const null-var2078 var2078)
(declare-const var3411 var2078) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString 
(assert (not (= var3411 null-var2078)))
(declare-const var3309 var2078) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString 
(assert (not (= var3309 null-var2078)))
(assert true)
(define-const var1643 Int (size/716358372 var3411)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>() 
(define-const var3760 Int (- 2147483647 var1643)) ; Statement: $i2 = 2147483647 - $i0 
(assert true)
(define-const var1353 Int (size/716358372 var3309)) ; Statement: $i1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>() 
 ; Statement: if $i2 >= $i1 goto $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString concatenate(com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString,com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString)>(r0, r1) 
(assert (not (>= var3760 var1353))) ; Negate: Cond: $i2 >= $i1  
(define-const var3563 var1457 var1457-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var1339 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1339)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1339!1 String)
(assert (= var1339!1 ""))
(assert true)
(define-const var886 String (append/672562846 var1339!1 "ByteString would be too long: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ByteString would be too long: ") 
(declare-const var1339!2 String)
(assert (= var1339!2 (str.++ var1339!1 "ByteString would be too long: ")))
(assert true)
(define-const var3312 Int (size/716358372 var3411)) ; Statement: $i3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>() 
(assert true)
(define-const var1871 String (append/-1001720160 var886 var3312)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var886!1 String)
(assert (str.prefixof var886 var886!1))
(assert true)
(define-const var958 String (append/672562846 var1871 "+")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("+") 
(declare-const var1871!1 String)
(assert (= var1871!1 (str.++ var1871 "+")))
(assert true)
(define-const var3597 Int (size/716358372 var3309)) ; Statement: $i4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>() 
(assert true)
(define-const var245 String (append/-1001720160 var958 var3597)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var958!1 String)
(assert (str.prefixof var958 var958!1))
(assert true)
(define-const var2649 String (toString/-2075883882 var245)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3563 var2649)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var3563!1 var1457)
(declare-const var2649!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {size/716358372=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], int), var1457-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2078=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var3411=r0, var3309=r1, var1643=$i0, var3760=$i2, var1353=$i1, var1457=java.lang.IllegalArgumentException, var3563=$r3, var1339=$r4, var886=$r5, var3312=$i3, var1871=$r6, var958=$r7, var3597=$i4, var245=$r8, var2649=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var2078, r0=var3411, r1=var3309, $i0=var1643, $i2=var3760, $i1=var1353, java.lang.IllegalArgumentException=var1457, $r3=var3563, $r4=var1339, $r5=var886, $i3=var3312, $r6=var1871, $r7=var958, $i4=var3597, $r8=var245, $r9=var2649}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>();	$i2 = 2147483647 - $i0;	$i1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>();	if $i2 >= $i1 goto $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString concatenate(com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString,com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString)>(r0, r1);	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ByteString would be too long: ");	$i3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("+");	$i4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r3
;block_num 2