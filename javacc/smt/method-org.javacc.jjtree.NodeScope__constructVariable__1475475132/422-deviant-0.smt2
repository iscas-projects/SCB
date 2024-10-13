(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var224 0)
(declare-sort var867 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun scopeNumber/-576648796 (var224) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var224 var224)
(declare-const null-String String)
(declare-const var449 var224) ; Statement: r1 := @this: org.javacc.jjtree.NodeScope 
(assert (not (= var449 null-var224)))
(declare-const var1291 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var1291 null-String)))
(define-const var1049 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1049)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1049!1 String)
(assert (= var1049!1 ""))
(assert true)
(define-const var3560 String (append/672562846 var1049!1 "000")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("000") 
(declare-const var1049!2 String)
(assert (= var1049!2 (str.++ var1049!1 "000")))
(define-const var541 Int (scopeNumber/-576648796 var449)) ; Statement: $i0 = r1.<org.javacc.jjtree.NodeScope: int scopeNumber> 
(assert true)
(define-const var1885 String (append/-1001720160 var3560 var541)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3560!1 String)
(assert (str.prefixof var3560 var3560!1))
(assert true)
(define-const var893 String (toString/-2075883882 var1885)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1207 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1207)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1207!1 String)
(assert (= var1207!1 ""))
(assert true)
(define-const var77 String (append/672562846 var1207!1 "jjt")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jjt") 
(declare-const var1207!2 String)
(assert (= var1207!2 (str.++ var1207!1 "jjt")))
(assert true)
(define-const var3736 String (append/672562846 var77 var1291)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var77!1 String)
(assert (= var77!1 (str.++ var77 var1291)))
(assert true)
(define-const var3723 Int (length/-134980193 var893)) ; Statement: $i1 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var1724 Int (- var3723 3)) ; Statement: $i3 = $i1 - 3 
(assert true)
(define-const var993 Int (length/-134980193 var893)) ; Statement: $i2 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (not (and true (and (>= var1724 0) (>= (str.len var893) var993) (>= var993 var1724)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), scopeNumber/-576648796=([org.javacc.jjtree.NodeScope], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var224=org.javacc.jjtree.NodeScope, var449=r1, var1291=r6, var867=null_type, var1049=$r0, var3560=$r2, var541=$i0, var1885=$r3, var893=r4, var1207=$r5, var77=$r7, var3736=$r9, var3723=$i1, var1724=$i3, var993=$i2, var608=$r8, var2702=$r10, var1904=$r11}
; {org.javacc.jjtree.NodeScope=var224, r1=var449, r6=var1291, null_type=var867, $r0=var1049, $r2=var3560, $i0=var541, $r3=var1885, r4=var893, $r5=var1207, $r7=var77, $r9=var3736, $i1=var3723, $i3=var1724, $i2=var993, $r8=var608, $r10=var2702, $r11=var1904}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: org.javacc.jjtree.NodeScope;	r6 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("000");	$i0 = r1.<org.javacc.jjtree.NodeScope: int scopeNumber>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jjt");	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$i1 = virtualinvoke r4.<java.lang.String: int length()>();	$i3 = $i1 - 3;	$i2 = virtualinvoke r4.<java.lang.String: int length()>();	$r8 = virtualinvoke r4.<java.lang.String: java.lang.String substring(int,int)>($i3, $i2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1