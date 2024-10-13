(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var145 0)
(declare-sort var512 0)
(declare-sort var1374 0)
(declare-sort var1998 0)
(declare-sort var1315 0)
(declare-sort var1668 0)
(declare-sort var2948 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var512_get/1088891777 (var512 var1998) var1998)
(declare-fun cast-from-String-to-var1998 (String) var1998)
(declare-fun cast-from-var1998-to-var1315 (var1998) var1315)
(declare-fun var1668-init () var1668)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var1668 String) void)
(declare-fun cast-from-var1668-to-var2948 (var1668) var2948)
(declare-const null-String String)
(declare-const var1374-STYLES var512)
(declare-const null-var1315 var1315)
(declare-const var1190 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1190 null-String)))
(define-const var2518 var512 var1374-STYLES) ; Statement: $r1 = <org.hibernate.engine.spi.CascadeStyles: java.util.Map STYLES> 
(define-const var3693 var1998 (var512_get/1088891777 var2518 (cast-from-String-to-var1998 var1190))) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var1616 var1315 (cast-from-var1998-to-var1315 var3693)) ; Statement: r3 = (org.hibernate.engine.spi.CascadeStyle) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var1616 null-var1315)))) ; Negate: Cond: r3 != null  
(define-const var1141 var1668 var1668-init) ; Statement: $r10 = new org.hibernate.MappingException 
(define-const var3375 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3375)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3375!1 String)
(assert (= var3375!1 ""))
(assert true)
(define-const var706 String (append/672562846 var3375!1 "Unsupported cascade style: ")) ; Statement: $r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported cascade style: ") 
(declare-const var3375!2 String)
(assert (= var3375!2 (str.++ var3375!1 "Unsupported cascade style: ")))
(assert true)
(define-const var229 String (append/672562846 var706 var1190)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var706!1 String)
(assert (= var706!1 (str.++ var706 var1190)))
(assert true)
(define-const var3627 String (toString/-2075883882 var229)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var1141 var3627)) ; Statement: specialinvoke $r10.<org.hibernate.MappingException: void <init>(java.lang.String)>($r8) 

(declare-const var1141!1 var1668)
(declare-const var3627!1 String)
(define-const var1119 var2948 (cast-from-var1668-to-var2948 var1141!1)) ; Statement: $r11 = (java.lang.Throwable) $r10 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var512_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1998=([java.lang.String], java.lang.Object), cast-from-var1998-to-var1315=([java.lang.Object], org.hibernate.engine.spi.CascadeStyle), var1668-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var1668-to-var2948=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1190=r0, var145=null_type, var512=java.util.Map, var1374=org.hibernate.engine.spi.CascadeStyles, var2518=$r1, var1998=java.lang.Object, var3693=$r2, var1315=org.hibernate.engine.spi.CascadeStyle, var1616=r3, var1668=org.hibernate.MappingException, var1141=$r10, var3375=$r9, var706=$r6, var229=$r7, var3627=$r8, var2948=java.lang.Throwable, var1119=$r11}
; {r0=var1190, null_type=var145, java.util.Map=var512, org.hibernate.engine.spi.CascadeStyles=var1374, $r1=var2518, java.lang.Object=var1998, $r2=var3693, org.hibernate.engine.spi.CascadeStyle=var1315, r3=var1616, org.hibernate.MappingException=var1668, $r10=var1141, $r9=var3375, $r6=var706, $r7=var229, $r8=var3627, java.lang.Throwable=var2948, $r11=var1119}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <org.hibernate.engine.spi.CascadeStyles: java.util.Map STYLES>;	$r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	r3 = (org.hibernate.engine.spi.CascadeStyle) $r2;	if r3 != null goto return r3;	$r10 = new org.hibernate.MappingException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported cascade style: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.hibernate.MappingException: void <init>(java.lang.String)>($r8);	$r11 = (java.lang.Throwable) $r10;	throw $r11
;block_num 2