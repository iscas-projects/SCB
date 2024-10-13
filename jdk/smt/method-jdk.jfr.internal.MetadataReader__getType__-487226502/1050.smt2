(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1204 0)
(declare-sort var1646 0)
(declare-sort var2848 0)
(declare-sort var308 0)
(declare-sort var359 0)
(declare-sort var3464 0)
(declare-sort var3655 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun longValue/2093908053 (var2848 String) Int)
(declare-fun types/-1917822194 (var1204) var308)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun var308_get/1088891777 (var308 var359) var359)
(declare-fun cast-from-Int-to-var359 (Int) var359)
(declare-fun cast-from-var359-to-var3464 (var359) var3464)
(declare-fun attribute/-1822613147 (var2848 String) String)
(declare-fun var3655-init () var3655)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3655 String) void)
(declare-const null-var1204 var1204)
(declare-const null-String String)
(declare-const null-var2848 var2848)
(declare-const null-var3464 var3464)
(declare-const var3154 var1204) ; Statement: r2 := @this: jdk.jfr.internal.MetadataReader 
(assert (not (= var3154 null-var1204)))
(declare-const var1786 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1786 null-String)))
(declare-const var3665 var2848) ; Statement: r0 := @parameter1: jdk.jfr.internal.MetadataDescriptor$Element 
(assert (not (= var3665 null-var2848)))
(assert true)
(define-const var64 Int (longValue/2093908053 var3665 var1786)) ; Statement: l0 = virtualinvoke r0.<jdk.jfr.internal.MetadataDescriptor$Element: long longValue(java.lang.String)>(r1) 
(define-const var2290 var308 (types/-1917822194 var3154)) ; Statement: $r3 = r2.<jdk.jfr.internal.MetadataReader: java.util.Map types> 
(define-const var807 Int (Int_valueOf/-1102777585 var64)) ; Statement: $r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0) 
(define-const var1413 var359 (var308_get/1088891777 var2290 (cast-from-Int-to-var359 var807))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4) 
(define-const var125 var3464 (cast-from-var359-to-var3464 var1413)) ; Statement: r6 = (jdk.jfr.internal.Type) $r5 
 ; Statement: if r6 != null goto return r6 
(assert (not (not (= var125 null-var3464)))) ; Negate: Cond: r6 != null  
(assert true)
(define-const var2568 String (attribute/-1822613147 var3665 "type")) ; Statement: r7 = virtualinvoke r0.<jdk.jfr.internal.MetadataDescriptor$Element: java.lang.String attribute(java.lang.String)>("type") 
(define-const var2776 var3655 var3655-init) ; Statement: $r8 = new java.lang.IllegalStateException 
(define-const var1435 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1435)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1435!1 String)
(assert (= var1435!1 ""))
(assert true)
(define-const var377 String (append/672562846 var1435!1 "Type \u0027")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type \'") 
(declare-const var1435!2 String)
(assert (= var1435!2 (str.++ var1435!1 "Type \u0027")))
(assert true)
(define-const var1739 String (append/-901862667 var377 var64)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var377!1 String)
(assert (str.prefixof var377 var377!1))
(assert true)
(define-const var1528 String (append/672562846 var1739 "\u0027 is not defined for ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not defined for ") 
(declare-const var1739!1 String)
(assert (= var1739!1 (str.++ var1739 "\u0027 is not defined for ")))
(assert true)
(define-const var1111 String (append/672562846 var1528 var2568)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1528!1 String)
(assert (= var1528!1 (str.++ var1528 var2568)))
(assert true)
(define-const var236 String (toString/-2075883882 var1111)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2776 var236)) ; Statement: specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r14) 

(declare-const var2776!1 var3655)
(declare-const var236!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {longValue/2093908053=([jdk.jfr.internal.MetadataDescriptor$Element, java.lang.String], long), types/-1917822194=([jdk.jfr.internal.MetadataReader], java.util.Map), Int_valueOf/-1102777585=([long], java.lang.Long), var308_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var359=([java.lang.Long], java.lang.Object), cast-from-var359-to-var3464=([java.lang.Object], jdk.jfr.internal.Type), attribute/-1822613147=([jdk.jfr.internal.MetadataDescriptor$Element, java.lang.String], java.lang.String), var3655-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1204=jdk.jfr.internal.MetadataReader, var3154=r2, var1786=r1, var1646=null_type, var2848=jdk.jfr.internal.MetadataDescriptor$Element, var3665=r0, var64=l0, var308=java.util.Map, var2290=$r3, var807=$r4, var359=java.lang.Object, var1413=$r5, var3464=jdk.jfr.internal.Type, var125=r6, var2568=r7, var3655=java.lang.IllegalStateException, var2776=$r8, var1435=$r9, var377=$r10, var1739=$r11, var1528=$r12, var1111=$r13, var236=$r14}
; {jdk.jfr.internal.MetadataReader=var1204, r2=var3154, r1=var1786, null_type=var1646, jdk.jfr.internal.MetadataDescriptor$Element=var2848, r0=var3665, l0=var64, java.util.Map=var308, $r3=var2290, $r4=var807, java.lang.Object=var359, $r5=var1413, jdk.jfr.internal.Type=var3464, r6=var125, r7=var2568, java.lang.IllegalStateException=var3655, $r8=var2776, $r9=var1435, $r10=var377, $r11=var1739, $r12=var1528, $r13=var1111, $r14=var236}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: jdk.jfr.internal.MetadataReader;	r1 := @parameter0: java.lang.String;	r0 := @parameter1: jdk.jfr.internal.MetadataDescriptor$Element;	l0 = virtualinvoke r0.<jdk.jfr.internal.MetadataDescriptor$Element: long longValue(java.lang.String)>(r1);	$r3 = r2.<jdk.jfr.internal.MetadataReader: java.util.Map types>;	$r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0);	$r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4);	r6 = (jdk.jfr.internal.Type) $r5;	if r6 != null goto return r6;	r7 = virtualinvoke r0.<jdk.jfr.internal.MetadataDescriptor$Element: java.lang.String attribute(java.lang.String)>("type");	$r8 = new java.lang.IllegalStateException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type \'");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not defined for ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r14);	throw $r8
;block_num 2