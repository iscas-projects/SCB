(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2464 0)
(declare-sort var1802 0)
(declare-sort var3770 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1802_getUInt/229208313 ((Array Int Int) Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3770-init () var3770)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-457548913 (var3770 String) void)
(declare-const null-var2464 var2464)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1309 var2464) ; Statement: r9 := @this: org.apache.poi.xssf.eventusermodel.XSSFBReader$SheetRefLoader 
(assert (not (= var1309 null-var2464)))
(declare-const var3927 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var3927 null-__Array__Int__Int__)))
(define-const var3246 Int (var1802_getUInt/229208313 var3927 8)) ; Statement: l0 = staticinvoke <org.apache.poi.util.LittleEndian: long getUInt(byte[],int)>(r0, 8) 
(define-const var2017 Int (ite (> var3246 1) 1 (ite (< var3246 1) (- 1) 0))) ; Statement: $b1 = l0 cmp 1L 
(define-const var817 Int (cast-from-Int-to-Int var2017)) ; Statement: $i8 = (int) $b1 
 ; Statement: if $i8 < 0 goto $r13 = new org.apache.poi.xssf.binary.XSSFBParseException 
(assert (< var817 0)) ; Cond: $i8 < 0 
(define-const var98 var3770 var3770-init) ; Statement: $r13 = new org.apache.poi.xssf.binary.XSSFBParseException 
(define-const var722 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var722)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var722!1 String)
(assert (= var722!1 ""))
(assert true)
(define-const var3899 String (append/672562846 var722!1 "table id out of range: ")) ; Statement: $r3 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("table id out of range: ") 
(declare-const var722!2 String)
(assert (= var722!2 (str.++ var722!1 "table id out of range: ")))
(assert true)
(define-const var785 String (append/-901862667 var3899 var3246)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var3899!1 String)
(assert (str.prefixof var3899 var3899!1))
(assert true)
(define-const var2945 String (toString/-2075883882 var785)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-457548913 var98 var2945)) ; Statement: specialinvoke $r13.<org.apache.poi.xssf.binary.XSSFBParseException: void <init>(java.lang.String)>($r5) 

(declare-const var98!1 var3770)
(declare-const var2945!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1802_getUInt/229208313=([byte[], int], long), cast-from-Int-to-Int=([byte], int), var3770-init=([], org.apache.poi.xssf.binary.XSSFBParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-457548913=([org.apache.poi.xssf.binary.XSSFBParseException, java.lang.String], void)}
; {var2464=org.apache.poi.xssf.eventusermodel.XSSFBReader$SheetRefLoader, var1309=r9, var3927=r0, var1802=org.apache.poi.util.LittleEndian, var3246=l0, var2017=$b1, var817=$i8, var3770=org.apache.poi.xssf.binary.XSSFBParseException, var98=$r13, var722=$r12, var3899=$r3, var785=$r4, var2945=$r5}
; {org.apache.poi.xssf.eventusermodel.XSSFBReader$SheetRefLoader=var2464, r9=var1309, r0=var3927, org.apache.poi.util.LittleEndian=var1802, l0=var3246, $b1=var2017, $i8=var817, org.apache.poi.xssf.binary.XSSFBParseException=var3770, $r13=var98, $r12=var722, $r3=var3899, $r4=var785, $r5=var2945}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.apache.poi.xssf.eventusermodel.XSSFBReader$SheetRefLoader;	r0 := @parameter0: byte[];	l0 = staticinvoke <org.apache.poi.util.LittleEndian: long getUInt(byte[],int)>(r0, 8);	$b1 = l0 cmp 1L;	$i8 = (int) $b1;	if $i8 < 0 goto $r13 = new org.apache.poi.xssf.binary.XSSFBParseException;	$r13 = new org.apache.poi.xssf.binary.XSSFBParseException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("table id out of range: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.apache.poi.xssf.binary.XSSFBParseException: void <init>(java.lang.String)>($r5);	throw $r13
;block_num 2