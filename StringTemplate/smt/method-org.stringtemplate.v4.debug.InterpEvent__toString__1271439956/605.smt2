(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3358 0)
(declare-sort var1336 0)
(declare-sort var999 0)
(declare-sort var3108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1336) ClassObject)
(declare-fun cast-from-var3358-to-var1336 (var3358) var1336)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun scope/-1094587980 (var3358) var999)
(declare-fun st/-361780184 (var999) var3108)
(declare-fun append/-1031950772 (String var1336) String)
(declare-fun cast-from-var3108-to-var1336 (var3108) var1336)
(declare-fun outputStartChar/-1094587980 (var3358) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun outputStopChar/-1094587980 (var3358) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3358 var3358)
(declare-const var3685 var3358) ; Statement: r1 := @this: org.stringtemplate.v4.debug.InterpEvent 
(assert (not (= var3685 null-var3358)))
(define-const var3341 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3341)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3341!1 String)
(assert (= var3341!1 ""))
(assert true)
(define-const var3126 ClassObject (getClass/1258963082 (cast-from-var3358-to-var1336 var3685))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2491 String (getSimpleName/-390194377 var3126)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var3585 String (append/672562846 var3341!1 var2491)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3341!2 String)
(assert (= var3341!2 (str.++ var3341!1 var2491)))
(assert true)
(define-const var3472 String (append/672562846 var3585 "{self=")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{self=") 
(declare-const var3585!1 String)
(assert (= var3585!1 (str.++ var3585 "{self=")))
(define-const var1370 var999 (scope/-1094587980 var3685)) ; Statement: $r5 = r1.<org.stringtemplate.v4.debug.InterpEvent: org.stringtemplate.v4.InstanceScope scope> 
(define-const var828 var3108 (st/-361780184 var1370)) ; Statement: $r6 = $r5.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st> 
(assert true)
(define-const var2175 String (append/-1031950772 var3472 (cast-from-var3108-to-var1336 var828))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var3472!1 String)
(assert (str.prefixof var3472 var3472!1))
(assert true)
(define-const var1432 String (append/672562846 var2175 ", start=")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", start=") 
(declare-const var2175!1 String)
(assert (= var2175!1 (str.++ var2175 ", start=")))
(define-const var3669 Int (outputStartChar/-1094587980 var3685)) ; Statement: $i0 = r1.<org.stringtemplate.v4.debug.InterpEvent: int outputStartChar> 
(assert true)
(define-const var496 String (append/-1001720160 var1432 var3669)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1432!1 String)
(assert (str.prefixof var1432 var1432!1))
(assert true)
(define-const var3656 String (append/672562846 var496 ", stop=")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", stop=") 
(declare-const var496!1 String)
(assert (= var496!1 (str.++ var496 ", stop=")))
(define-const var3861 Int (outputStopChar/-1094587980 var3685)) ; Statement: $i1 = r1.<org.stringtemplate.v4.debug.InterpEvent: int outputStopChar> 
(assert true)
(define-const var865 String (append/-1001720160 var3656 var3861)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3656!1 String)
(assert (str.prefixof var3656 var3656!1))
(assert true)
(define-const var3895 String (append/-1166366385 var865 125)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var865!1 String)
(assert (str.prefixof var865 var865!1))
(assert true)
(define-const var2907 String (toString/-2075883882 var3895)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3358-to-var1336=([org.stringtemplate.v4.debug.InterpEvent], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), scope/-1094587980=([org.stringtemplate.v4.debug.InterpEvent], org.stringtemplate.v4.InstanceScope), st/-361780184=([org.stringtemplate.v4.InstanceScope], org.stringtemplate.v4.ST), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3108-to-var1336=([org.stringtemplate.v4.ST], java.lang.Object), outputStartChar/-1094587980=([org.stringtemplate.v4.debug.InterpEvent], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), outputStopChar/-1094587980=([org.stringtemplate.v4.debug.InterpEvent], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3358=org.stringtemplate.v4.debug.InterpEvent, var3685=r1, var3341=$r0, var1336=java.lang.Object, var3126=$r2, var2491=$r3, var3585=$r4, var3472=$r7, var999=org.stringtemplate.v4.InstanceScope, var1370=$r5, var3108=org.stringtemplate.v4.ST, var828=$r6, var2175=$r8, var1432=$r9, var3669=$i0, var496=$r10, var3656=$r11, var3861=$i1, var865=$r12, var3895=$r13, var2907=$r14}
; {org.stringtemplate.v4.debug.InterpEvent=var3358, r1=var3685, $r0=var3341, java.lang.Object=var1336, $r2=var3126, $r3=var2491, $r4=var3585, $r7=var3472, org.stringtemplate.v4.InstanceScope=var999, $r5=var1370, org.stringtemplate.v4.ST=var3108, $r6=var828, $r8=var2175, $r9=var1432, $i0=var3669, $r10=var496, $r11=var3656, $i1=var3861, $r12=var865, $r13=var3895, $r14=var2907}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.debug.InterpEvent;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{self=");	$r5 = r1.<org.stringtemplate.v4.debug.InterpEvent: org.stringtemplate.v4.InstanceScope scope>;	$r6 = $r5.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", start=");	$i0 = r1.<org.stringtemplate.v4.debug.InterpEvent: int outputStartChar>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", stop=");	$i1 = r1.<org.stringtemplate.v4.debug.InterpEvent: int outputStopChar>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1