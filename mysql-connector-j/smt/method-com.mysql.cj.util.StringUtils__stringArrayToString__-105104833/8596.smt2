(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3229 0)
(declare-sort var2620 0)
(declare-sort var816 0)
(declare-sort var3908 0)
(declare-sort var2634 0)
(declare-sort var2365 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var816_stream/-1757820 ((Array Int var3908)) var2620)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var3908__ ((Array Int String)) (Array Int var3908))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2620_limit/-955905912 (var2620 Int) var2620)
(declare-fun var2365_joining/-1221703981 (String String String) var2634)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2620_collect/-2050842585 (var2620 var2634) var3908)
(declare-fun cast-from-var3908-to-String (var3908) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-String String)
(declare-const var883 (Array Int String)) ; Statement: r1 := @parameter0: java.lang.String[] 
(assert (not (= var883 null-__Array__Int__String__)))
(declare-const var3947 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3947 null-String)))
(declare-const var2973 String) ; Statement: r8 := @parameter2: java.lang.String 
(assert (not (= var2973 null-String)))
(declare-const var2219 String) ; Statement: r9 := @parameter3: java.lang.String 
(assert (not (= var2219 null-String)))
(declare-const var170 String) ; Statement: r4 := @parameter4: java.lang.String 
(assert (not (= var170 null-String)))
(define-const var2360 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2360)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2360!1 String)
(assert (= var2360!1 ""))
(define-const var3667 Int (getLength-Arr-String-1 var883)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i0 <= 1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(assert (not (<= var3667 1))) ; Negate: Cond: $i0 <= 1  
(define-const var1775 var2620 (var816_stream/-1757820 (cast-from-__Array__Int__String__-to-__Array__Int__var3908__ var883))) ; Statement: $r7 = staticinvoke <java.util.Arrays: java.util.stream.Stream stream(java.lang.Object[])>(r1) 
(define-const var3987 Int (getLength-Arr-String-1 var883)) ; Statement: $i3 = lengthof r1 
(define-const var3664 Int (- var3987 1)) ; Statement: $i4 = $i3 - 1 
(define-const var1983 Int (cast-from-Int-to-Int var3664)) ; Statement: $l5 = (long) $i4 
(define-const var3069 var2620 (var2620_limit/-955905912 var1775 var1983)) ; Statement: $r11 = interfaceinvoke $r7.<java.util.stream.Stream: java.util.stream.Stream limit(long)>($l5) 
(define-const var324 var2634 (var2365_joining/-1221703981 (cast-from-String-to-String var2973) (cast-from-String-to-String var3947) (cast-from-String-to-String var2219))) ; Statement: $r10 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence,java.lang.CharSequence,java.lang.CharSequence)>(r8, r2, r9) 
(define-const var1656 var3908 (var2620_collect/-2050842585 var3069 var324)) ; Statement: $r12 = interfaceinvoke $r11.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r10) 
(define-const var3161 String (cast-from-var3908-to-String var1656)) ; Statement: $r13 = (java.lang.String) $r12 
(assert true)
;(assert (append/672562846 var2360!1 var3161)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2360!2 String)
(assert (= var2360!2 (str.++ var2360!1 var3161)))
 ; Statement: goto [?= $i1 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var3057 Int (getLength-Arr-String-1 var883)) ; Statement: $i1 = lengthof r1 
(define-const var3693 Int (- var3057 1)) ; Statement: $i2 = $i1 - 1 
(define-const var3463 String (select var883 var3693)) ; Statement: $r3 = r1[$i2] 
(assert true)
(define-const var3709 String (append/672562846 var2360!2 var3463)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2360!3 String)
(assert (= var2360!3 (str.++ var2360!2 var3463)))
(assert true)
;(assert (append/672562846 var3709 var170)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3709!1 String)
(assert (= var3709!1 (str.++ var3709 var170)))
(assert true)
(define-const var1116 String (toString/-2075883882 var2360!3)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-String-1=([java.lang.String[]], int), var816_stream/-1757820=([java.lang.Object[]], java.util.stream.Stream), cast-from-__Array__Int__String__-to-__Array__Int__var3908__=([java.lang.String[]], java.lang.Object[]), cast-from-Int-to-Int=([int], long), var2620_limit/-955905912=([java.util.stream.Stream, long], java.util.stream.Stream), var2365_joining/-1221703981=([java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence], java.util.stream.Collector), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2620_collect/-2050842585=([java.util.stream.Stream, java.util.stream.Collector], java.lang.Object), cast-from-var3908-to-String=([java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var883=r1, var3947=r2, var3229=null_type, var2973=r8, var2219=r9, var170=r4, var2360=$r0, var3667=$i0, var2620=java.util.stream.Stream, var816=java.util.Arrays, var3908=java.lang.Object, var1775=$r7, var3987=$i3, var3664=$i4, var1983=$l5, var3069=$r11, var2634=java.util.stream.Collector, var2365=java.util.stream.Collectors, var324=$r10, var1656=$r12, var3161=$r13, var3057=$i1, var3693=$i2, var3463=$r3, var3709=$r5, var1116=$r6}
; {r1=var883, r2=var3947, null_type=var3229, r8=var2973, r9=var2219, r4=var170, $r0=var2360, $i0=var3667, java.util.stream.Stream=var2620, java.util.Arrays=var816, java.lang.Object=var3908, $r7=var1775, $i3=var3987, $i4=var3664, $l5=var1983, $r11=var3069, java.util.stream.Collector=var2634, java.util.stream.Collectors=var2365, $r10=var324, $r12=var1656, $r13=var3161, $i1=var3057, $i2=var3693, $r3=var3463, $r5=var3709, $r6=var1116}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String[];	r2 := @parameter1: java.lang.String;	r8 := @parameter2: java.lang.String;	r9 := @parameter3: java.lang.String;	r4 := @parameter4: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = lengthof r1;	if $i0 <= 1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = staticinvoke <java.util.Arrays: java.util.stream.Stream stream(java.lang.Object[])>(r1);	$i3 = lengthof r1;	$i4 = $i3 - 1;	$l5 = (long) $i4;	$r11 = interfaceinvoke $r7.<java.util.stream.Stream: java.util.stream.Stream limit(long)>($l5);	$r10 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence,java.lang.CharSequence,java.lang.CharSequence)>(r8, r2, r9);	$r12 = interfaceinvoke $r11.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r10);	$r13 = (java.lang.String) $r12;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	goto [?= $i1 = lengthof r1];	$i1 = lengthof r1;	$i2 = $i1 - 1;	$r3 = r1[$i2];	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3