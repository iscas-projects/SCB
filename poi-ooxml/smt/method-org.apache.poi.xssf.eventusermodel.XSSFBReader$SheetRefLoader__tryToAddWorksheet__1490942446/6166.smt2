(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2759 0)
(declare-sort var2547 0)
(declare-sort var1520 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2547_getUInt/229208313 ((Array Int Int) Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1520-init () var1520)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-457548913 (var1520 String) void)
(declare-const null-var2759 var2759)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1870 var2759) ; Statement: r9 := @this: org.apache.poi.xssf.eventusermodel.XSSFBReader$SheetRefLoader 
(assert (not (= var1870 null-var2759)))
(declare-const var620 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var620 null-__Array__Int__Int__)))
;(assert (var2547_getUInt/229208313 var620 0)) ; Statement: staticinvoke <org.apache.poi.util.LittleEndian: long getUInt(byte[],int)>(r0, 0) 

(declare-const var620!1 (Array Int Int))
(declare-const var3497 Int)
(define-const var2374 Int (var2547_getUInt/229208313 var620!1 4)) ; Statement: l0 = staticinvoke <org.apache.poi.util.LittleEndian: long getUInt(byte[],int)>(r0, 4) 
(define-const var3964 Int (ite (> var2374 1) 1 (ite (< var2374 1) (- 1) 0))) ; Statement: $b1 = l0 cmp 1L 
(define-const var2159 Int (cast-from-Int-to-Int var3964)) ; Statement: $i5 = (int) $b1 
 ; Statement: if $i5 < 0 goto $r13 = new org.apache.poi.xssf.binary.XSSFBParseException 
(assert (< var2159 0)) ; Cond: $i5 < 0 
(define-const var3779 var1520 var1520-init) ; Statement: $r13 = new org.apache.poi.xssf.binary.XSSFBParseException 
(define-const var867 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var867)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var867!1 String)
(assert (= var867!1 ""))
(assert true)
(define-const var3776 String (append/672562846 var867!1 "table id out of range: ")) ; Statement: $r3 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("table id out of range: ") 
(declare-const var867!2 String)
(assert (= var867!2 (str.++ var867!1 "table id out of range: ")))
(assert true)
(define-const var2182 String (append/-901862667 var3776 var2374)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var3776!1 String)
(assert (str.prefixof var3776 var3776!1))
(assert true)
(define-const var3931 String (toString/-2075883882 var2182)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-457548913 var3779 var3931)) ; Statement: specialinvoke $r13.<org.apache.poi.xssf.binary.XSSFBParseException: void <init>(java.lang.String)>($r5) 

(declare-const var3779!1 var1520)
(declare-const var3931!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var2547_getUInt/229208313=([byte[], int], long), cast-from-Int-to-Int=([byte], int), var1520-init=([], org.apache.poi.xssf.binary.XSSFBParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-457548913=([org.apache.poi.xssf.binary.XSSFBParseException, java.lang.String], void)}
; {var2759=org.apache.poi.xssf.eventusermodel.XSSFBReader$SheetRefLoader, var1870=r9, var620=r0, var2547=org.apache.poi.util.LittleEndian, var3497=0, var2374=l0, var3964=$b1, var2159=$i5, var1520=org.apache.poi.xssf.binary.XSSFBParseException, var3779=$r13, var867=$r12, var3776=$r3, var2182=$r4, var3931=$r5}
; {org.apache.poi.xssf.eventusermodel.XSSFBReader$SheetRefLoader=var2759, r9=var1870, r0=var620, org.apache.poi.util.LittleEndian=var2547, 0=var3497, l0=var2374, $b1=var3964, $i5=var2159, org.apache.poi.xssf.binary.XSSFBParseException=var1520, $r13=var3779, $r12=var867, $r3=var3776, $r4=var2182, $r5=var3931}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.apache.poi.xssf.eventusermodel.XSSFBReader$SheetRefLoader;	r0 := @parameter0: byte[];	staticinvoke <org.apache.poi.util.LittleEndian: long getUInt(byte[],int)>(r0, 0);	l0 = staticinvoke <org.apache.poi.util.LittleEndian: long getUInt(byte[],int)>(r0, 4);	$b1 = l0 cmp 1L;	$i5 = (int) $b1;	if $i5 < 0 goto $r13 = new org.apache.poi.xssf.binary.XSSFBParseException;	$r13 = new org.apache.poi.xssf.binary.XSSFBParseException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("table id out of range: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.apache.poi.xssf.binary.XSSFBParseException: void <init>(java.lang.String)>($r5);	throw $r13
;block_num 2