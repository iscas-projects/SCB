(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2248 0)
(declare-sort var2095 0)
(declare-sort var658 0)
(declare-sort var1427 0)
(declare-sort var3234 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1608784054 (var2248) String)
(declare-fun var2248_dottyFriendly/1147656248 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun nodes/-1608784054 (var2248) var2095)
(declare-fun iterator/1528830939 (var658) Iterator)
(declare-fun cast-from-var2095-to-var658 (var2095) var658)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun edges/-1608784054 (var2248) var1427)
(declare-fun var1427_keySet/-712633290 (var1427) var3234)
(declare-fun var3234_iterator/1911472585 (var3234) Iterator)
(declare-const null-var2248 var2248)
(declare-const var502 var2248) ; Statement: r2 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier$Graph 
(assert (not (= var502 null-var2248)))
(define-const var1562 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1562)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1562!1 String)
(assert (= var1562!1 ""))
(define-const var1447 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1447)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1447!1 String)
(assert (= var1447!1 ""))
(assert true)
(define-const var242 String (append/672562846 var1447!1 "digraph ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("digraph ") 
(declare-const var1447!2 String)
(assert (= var1447!2 (str.++ var1447!1 "digraph ")))
(define-const var3683 String (name/-1608784054 var502)) ; Statement: $r3 = r2.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.lang.String name> 
(define-const var3455 String (var2248_dottyFriendly/1147656248 var3683)) ; Statement: $r4 = staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.lang.String dottyFriendly(java.lang.String)>($r3) 
(assert true)
(define-const var1564 String (append/672562846 var242 var3455)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var242!1 String)
(assert (= var242!1 (str.++ var242 var3455)))
(assert true)
(define-const var365 String (append/672562846 var1564 " {")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {") 
(declare-const var1564!1 String)
(assert (= var1564!1 (str.++ var1564 " {")))
(assert true)
(define-const var562 String (toString/-2075883882 var365)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1562!1 var562)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1562!2 String)
(assert (= var1562!2 (str.++ var1562!1 var562)))
(assert true)
;(assert (append/672562846 var1562!2 "\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1562!3 String)
(assert (= var1562!3 (str.++ var1562!2 "\n")))
(assert true)
;(assert (append/672562846 var1562!3 "\tgraph [fontname=courier]\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\tgraph [fontname=courier]\n") 
(declare-const var1562!4 String)
(assert (= var1562!4 (str.++ var1562!3 "\tgraph [fontname=courier]\n")))
(assert true)
;(assert (append/672562846 var1562!4 "\tnode [style=filled,color=\u0022#99bb99\u0022,fontname=courier]\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\tnode [style=filled,color=\"#99bb99\",fontname=courier]\n") 
(declare-const var1562!5 String)
(assert (= var1562!5 (str.++ var1562!4 "\tnode [style=filled,color=\u0022#99bb99\u0022,fontname=courier]\n")))
(assert true)
;(assert (append/672562846 var1562!5 "\tedge [fontname=courier]\n\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\tedge [fontname=courier]\n\n") 
(declare-const var1562!6 String)
(assert (= var1562!6 (str.++ var1562!5 "\tedge [fontname=courier]\n\n")))
(define-const var3661 var2095 (nodes/-1608784054 var502)) ; Statement: $r9 = r2.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.util.LinkedHashSet nodes> 
(assert true)
(define-const var1382 Iterator (iterator/1528830939 (cast-from-var2095-to-var658 var3661))) ; Statement: r36 = virtualinvoke $r9.<java.util.LinkedHashSet: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1712 Bool (Iterator_hasNext/-1669924200 var1382)) ; Statement: $z0 = interfaceinvoke r36.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r10 = r2.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.util.Map edges> 
(assert (= (ite var1712 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1260 var1427 (edges/-1608784054 var502)) ; Statement: $r10 = r2.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.util.Map edges> 
(define-const var2547 var3234 (var1427_keySet/-712633290 var1260)) ; Statement: $r11 = interfaceinvoke $r10.<java.util.Map: java.util.Set keySet()>() 
(define-const var2886 Iterator (var3234_iterator/1911472585 var2547)) ; Statement: r39 = interfaceinvoke $r11.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1404 Bool (Iterator_hasNext/-1669924200 var2886)) ; Statement: $z1 = interfaceinvoke r39.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(assert (= (ite var1404 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (append/672562846 var1562!6 "\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1562!7 String)
(assert (= var1562!7 (str.++ var1562!6 "\n")))
(define-const var2690 var2095 (nodes/-1608784054 var502)) ; Statement: $r12 = r2.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.util.LinkedHashSet nodes> 
(assert true)
(define-const var3280 Iterator (iterator/1528830939 (cast-from-var2095-to-var658 var2690))) ; Statement: r43 = virtualinvoke $r12.<java.util.LinkedHashSet: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1925 Bool (Iterator_hasNext/-1669924200 var3280)) ; Statement: $z2 = interfaceinvoke r43.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n") 
(assert (= (ite var1925 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (append/672562846 var1562!7 "}\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n") 
(declare-const var1562!8 String)
(assert (= var1562!8 (str.++ var1562!7 "}\n")))
(assert true)
(define-const var3456 String (toString/-2075883882 var1562!8)) ; Statement: $r13 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1608784054=([jdk.nashorn.internal.ir.debug.NashornTextifier$Graph], java.lang.String), var2248_dottyFriendly/1147656248=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), nodes/-1608784054=([jdk.nashorn.internal.ir.debug.NashornTextifier$Graph], java.util.LinkedHashSet), iterator/1528830939=([java.util.HashSet], java.util.Iterator), cast-from-var2095-to-var658=([java.util.LinkedHashSet], java.util.HashSet), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), edges/-1608784054=([jdk.nashorn.internal.ir.debug.NashornTextifier$Graph], java.util.Map), var1427_keySet/-712633290=([java.util.Map], java.util.Set), var3234_iterator/1911472585=([java.util.Set], java.util.Iterator)}
; {var2248=jdk.nashorn.internal.ir.debug.NashornTextifier$Graph, var502=r2, var1562=$r0, var1447=$r1, var242=$r5, var3683=$r3, var3455=$r4, var1564=$r6, var365=$r7, var562=$r8, var2095=java.util.LinkedHashSet, var3661=$r9, var658=java.util.HashSet, var1382=r36, var1712=$z0, var1427=java.util.Map, var1260=$r10, var3234=java.util.Set, var2547=$r11, var2886=r39, var1404=$z1, var2690=$r12, var3280=r43, var1925=$z2, var3456=$r13}
; {jdk.nashorn.internal.ir.debug.NashornTextifier$Graph=var2248, r2=var502, $r0=var1562, $r1=var1447, $r5=var242, $r3=var3683, $r4=var3455, $r6=var1564, $r7=var365, $r8=var562, java.util.LinkedHashSet=var2095, $r9=var3661, java.util.HashSet=var658, r36=var1382, $z0=var1712, java.util.Map=var1427, $r10=var1260, java.util.Set=var3234, $r11=var2547, r39=var2886, $z1=var1404, $r12=var2690, r43=var3280, $z2=var1925, $r13=var3456}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier$Graph;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("digraph ");	$r3 = r2.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.lang.String name>;	$r4 = staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.lang.String dottyFriendly(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\tgraph [fontname=courier]\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\tnode [style=filled,color=\"#99bb99\",fontname=courier]\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\tedge [fontname=courier]\n\n");	$r9 = r2.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.util.LinkedHashSet nodes>;	r36 = virtualinvoke $r9.<java.util.LinkedHashSet: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r36.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r10 = r2.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.util.Map edges>;	$r10 = r2.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.util.Map edges>;	$r11 = interfaceinvoke $r10.<java.util.Map: java.util.Set keySet()>();	r39 = interfaceinvoke $r11.<java.util.Set: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r39.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r12 = r2.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.util.LinkedHashSet nodes>;	r43 = virtualinvoke $r12.<java.util.LinkedHashSet: java.util.Iterator iterator()>();	$z2 = interfaceinvoke r43.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n");	$r13 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 7