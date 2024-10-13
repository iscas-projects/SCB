(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3906 0)
(declare-sort var519 0)
(declare-sort var807 0)
(declare-sort var1469 0)
(declare-sort var1564 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun imports/787585255 (var3906) var519)
(declare-fun var519_size/-959786421 (var519) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var807) String)
(declare-fun cast-from-var519-to-var807 (var519) var807)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun templates/787585255 (var3906) var1469)
(declare-fun var1469_keySet/-712633290 (var1469) var1564)
(declare-fun var1564_iterator/1911472585 (var1564) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var3906 var3906)
(declare-const var2566 var3906) ; Statement: r1 := @this: org.stringtemplate.v4.STGroup 
(assert (not (= var2566 null-var3906)))
(define-const var3621 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3621)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3621!1 String)
(assert (= var3621!1 ""))
(define-const var1763 var519 (imports/787585255 var2566)) ; Statement: $r2 = r1.<org.stringtemplate.v4.STGroup: java.util.List imports> 
(define-const var3585 Int (var519_size/-959786421 var1763)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
 ; Statement: if $i0 == 0 goto $r3 = r1.<org.stringtemplate.v4.STGroup: java.util.Map templates> 
(assert (not (= var3585 0))) ; Negate: Cond: $i0 == 0  
(define-const var630 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var630)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var630!1 String)
(assert (= var630!1 ""))
(assert true)
(define-const var2336 String (append/672562846 var630!1 " : ")) ; Statement: $r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ") 
(declare-const var630!2 String)
(assert (= var630!2 (str.++ var630!1 " : ")))
(define-const var192 var519 (imports/787585255 var2566)) ; Statement: $r31 = r1.<org.stringtemplate.v4.STGroup: java.util.List imports> 
(assert true)
(define-const var2471 String (append/-1031950772 var2336 (cast-from-var519-to-var807 var192))) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r31) 
(declare-const var2336!1 String)
(assert (str.prefixof var2336 var2336!1))
(assert true)
(define-const var3521 String (toString/-2075883882 var2471)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var3621!1 var3521)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var3621!2 String)
(assert (= var3621!2 (str.++ var3621!1 var3521)))
(assert true) ; Non Conditional
(define-const var3684 var1469 (templates/787585255 var2566)) ; Statement: $r3 = r1.<org.stringtemplate.v4.STGroup: java.util.Map templates> 
(define-const var2878 var1564 (var1469_keySet/-712633290 var3684)) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.util.Set keySet()>() 
(define-const var650 Iterator (var1564_iterator/1911472585 var2878)) ; Statement: $r35 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3000 Bool (Iterator_hasNext/-1669924200 var650)) ; Statement: $z1 = interfaceinvoke $r35.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3000 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3534 String (toString/-2075883882 var3621!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), imports/787585255=([org.stringtemplate.v4.STGroup], java.util.List), var519_size/-959786421=([java.util.List], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var519-to-var807=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), templates/787585255=([org.stringtemplate.v4.STGroup], java.util.Map), var1469_keySet/-712633290=([java.util.Map], java.util.Set), var1564_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var3906=org.stringtemplate.v4.STGroup, var2566=r1, var3621=$r0, var519=java.util.List, var1763=$r2, var3585=$i0, var630=$r30, var2336=$r32, var192=$r31, var807=java.lang.Object, var2471=$r33, var3521=$r34, var1469=java.util.Map, var3684=$r3, var1564=java.util.Set, var2878=$r4, var650=$r35, var3000=$z1, var3534=$r5}
; {org.stringtemplate.v4.STGroup=var3906, r1=var2566, $r0=var3621, java.util.List=var519, $r2=var1763, $i0=var3585, $r30=var630, $r32=var2336, $r31=var192, java.lang.Object=var807, $r33=var2471, $r34=var3521, java.util.Map=var1469, $r3=var3684, java.util.Set=var1564, $r4=var2878, $r35=var650, $z1=var3000, $r5=var3534}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: org.stringtemplate.v4.STGroup;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.stringtemplate.v4.STGroup: java.util.List imports>;	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	if $i0 == 0 goto $r3 = r1.<org.stringtemplate.v4.STGroup: java.util.Map templates>;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ");	$r31 = r1.<org.stringtemplate.v4.STGroup: java.util.List imports>;	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r31);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r3 = r1.<org.stringtemplate.v4.STGroup: java.util.Map templates>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.util.Set keySet()>();	$r35 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>();	$z1 = interfaceinvoke $r35.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5