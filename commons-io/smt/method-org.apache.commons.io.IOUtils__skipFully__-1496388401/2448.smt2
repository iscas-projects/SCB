(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1766 0)
(declare-sort var1258 0)
(declare-sort var1448 0)
(declare-sort var550 0)
(declare-sort var3589 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1448_bootstrap$/523421054 () var1258)
(declare-fun var550_skip/-14589613 (var1766 Int var1258) Int)
(declare-fun var3589-init () var3589)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1131757835 (var3589 String) void)
(declare-const null-var1766 var1766)
(declare-const null-Int Int)
(declare-const var3788 var1766) ; Statement: r0 := @parameter0: java.io.InputStream 
(assert (not (= var3788 null-var1766)))
(declare-const var1088 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var1088 null-Int)))
(define-const var1148 var1258 var1448_bootstrap$/523421054) ; Statement: $r1 = staticinvoke <org.apache.commons.io.IOUtils$getScratchByteArrayWriteOnly__39: java.util.function.Supplier bootstrap$()>() 
(define-const var3473 Int (var550_skip/-14589613 var3788 var1088 var1148)) ; Statement: l1 = staticinvoke <org.apache.commons.io.IOUtils: long skip(java.io.InputStream,long,java.util.function.Supplier)>(r0, l0, $r1) 
(define-const var2490 Int (ite (> var3473 var1088) 1 (ite (< var3473 var1088) (- 1) 0))) ; Statement: $b2 = l1 cmp l0 
 ; Statement: if $b2 == 0 goto return 
(assert (not (= var2490 0))) ; Negate: Cond: $b2 == 0  
(define-const var3791 var3589 var3589-init) ; Statement: $r2 = new java.io.EOFException 
(define-const var1171 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1171)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1171!1 String)
(assert (= var1171!1 ""))
(assert true)
(define-const var1698 String (append/672562846 var1171!1 "Bytes to skip: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bytes to skip: ") 
(declare-const var1171!2 String)
(assert (= var1171!2 (str.++ var1171!1 "Bytes to skip: ")))
(assert true)
(define-const var914 String (append/-901862667 var1698 var1088)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var1698!1 String)
(assert (str.prefixof var1698 var1698!1))
(assert true)
(define-const var3818 String (append/672562846 var914 " actual: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" actual: ") 
(declare-const var914!1 String)
(assert (= var914!1 (str.++ var914 " actual: ")))
(assert true)
(define-const var3623 String (append/-901862667 var3818 var3473)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1) 
(declare-const var3818!1 String)
(assert (str.prefixof var3818 var3818!1))
(assert true)
(define-const var2819 String (toString/-2075883882 var3623)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1131757835 var3791 var2819)) ; Statement: specialinvoke $r2.<java.io.EOFException: void <init>(java.lang.String)>($r8) 

(declare-const var3791!1 var3589)
(declare-const var2819!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1448_bootstrap$/523421054=([], java.util.function.Supplier), var550_skip/-14589613=([java.io.InputStream, long, java.util.function.Supplier], long), var3589-init=([], java.io.EOFException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1131757835=([java.io.EOFException, java.lang.String], void)}
; {var1766=java.io.InputStream, var3788=r0, var1088=l0, var1258=java.util.function.Supplier, var1448=org.apache.commons.io.IOUtils$getScratchByteArrayWriteOnly__39, var1148=$r1, var550=org.apache.commons.io.IOUtils, var3473=l1, var2490=$b2, var3589=java.io.EOFException, var3791=$r2, var1171=$r3, var1698=$r4, var914=$r5, var3818=$r6, var3623=$r7, var2819=$r8}
; {java.io.InputStream=var1766, r0=var3788, l0=var1088, java.util.function.Supplier=var1258, org.apache.commons.io.IOUtils$getScratchByteArrayWriteOnly__39=var1448, $r1=var1148, org.apache.commons.io.IOUtils=var550, l1=var3473, $b2=var2490, java.io.EOFException=var3589, $r2=var3791, $r3=var1171, $r4=var1698, $r5=var914, $r6=var3818, $r7=var3623, $r8=var2819}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.InputStream;	l0 := @parameter1: long;	$r1 = staticinvoke <org.apache.commons.io.IOUtils$getScratchByteArrayWriteOnly__39: java.util.function.Supplier bootstrap$()>();	l1 = staticinvoke <org.apache.commons.io.IOUtils: long skip(java.io.InputStream,long,java.util.function.Supplier)>(r0, l0, $r1);	$b2 = l1 cmp l0;	if $b2 == 0 goto return;	$r2 = new java.io.EOFException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bytes to skip: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" actual: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.EOFException: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 2