(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2992 0)
(declare-sort var3680 0)
(declare-sort var3442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/716358372 (var3680) Int)
(declare-fun var3442-init () var3442)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun size/-1510201824 (var2992) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3442 String) void)
(declare-const null-var2992 var2992)
(declare-const null-var3680 var3680)
(declare-const null-Int Int)
(declare-const var164 var2992) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString 
(assert (not (= var164 null-var2992)))
(declare-const var2955 var3680) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString 
(assert (not (= var2955 null-var3680)))
(declare-const var3564 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var3564 null-Int)))
(declare-const var3710 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3710 null-Int)))
(assert true)
(define-const var1174 Int (size/716358372 var2955)) ; Statement: $i1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>() 
 ; Statement: if i0 <= $i1 goto $i4 = i2 + i0 
(assert (not (<= var3710 var1174))) ; Negate: Cond: i0 <= $i1  
(define-const var1171 var3442 var3442-init) ; Statement: $r23 = new java.lang.IllegalArgumentException 
(define-const var1858 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1858)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1858!1 String)
(assert (= var1858!1 ""))
(assert true)
(define-const var1805 String (append/672562846 var1858!1 "Length too large: ")) ; Statement: $r18 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Length too large: ") 
(declare-const var1858!2 String)
(assert (= var1858!2 (str.++ var1858!1 "Length too large: ")))
(assert true)
(define-const var1500 String (append/-1001720160 var1805 var3710)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1805!1 String)
(assert (str.prefixof var1805 var1805!1))
(assert true)
(define-const var2001 Int (size/-1510201824 var164)) ; Statement: $i12 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString: int size()>() 
(assert true)
(define-const var2215 String (append/-1001720160 var1500 var2001)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12) 
(declare-const var1500!1 String)
(assert (str.prefixof var1500 var1500!1))
(assert true)
(define-const var3075 String (toString/-2075883882 var2215)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1171 var3075)) ; Statement: specialinvoke $r23.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r21) 

(declare-const var1171!1 var3442)
(declare-const var3075!1 String)
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {size/716358372=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], int), var3442-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), size/-1510201824=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2992=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString, var164=r1, var3680=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var2955=r0, var3564=i2, var3710=i0, var1174=$i1, var3442=java.lang.IllegalArgumentException, var1171=$r23, var1858=$r22, var1805=$r18, var1500=$r19, var2001=$i12, var2215=$r20, var3075=$r21}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString=var2992, r1=var164, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var3680, r0=var2955, i2=var3564, i0=var3710, $i1=var1174, java.lang.IllegalArgumentException=var3442, $r23=var1171, $r22=var1858, $r18=var1805, $r19=var1500, $i12=var2001, $r20=var2215, $r21=var3075}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString;	i2 := @parameter1: int;	i0 := @parameter2: int;	$i1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>();	if i0 <= $i1 goto $i4 = i2 + i0;	$r23 = new java.lang.IllegalArgumentException;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Length too large: ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$i12 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString: int size()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r23.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r21);	throw $r23
;block_num 2