(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1898 0)
(declare-sort var2068 0)
(declare-sort var233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1898-init () var1898)
(declare-fun <init>/-325640736 (var1898) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2068_add/328494887 (var2068 var233) Bool)
(declare-fun cast-from-var1898-to-var2068 (var1898) var2068)
(declare-fun cast-from-String-to-var233 (String) var233)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var2068_iterator/-912451715 (var2068) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-String String)
(declare-const var814 String) ; Statement: r3 := @parameter0: java.lang.CharSequence 
(assert (not (= var814 null-String)))
(define-const var3364 var1898 var1898-init) ; Statement: $r30 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3364)) ; Statement: specialinvoke $r30.<java.util.ArrayList: void <init>()>() 

(declare-const var3364!1 var1898)
(define-const var977 var1898 var3364!1) ; Statement: r26 = $r30 
(define-const var3137 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3137)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3137!1 String)
(assert (= var3137!1 ""))
;(assert (var2068_add/328494887 (cast-from-var1898-to-var2068 var3364!1) (cast-from-String-to-var233 var3137!1))) ; Statement: interfaceinvoke $r30.<java.util.List: boolean add(java.lang.Object)>($r31) 

(declare-const var3364!2 var1898)
(declare-const var3137!2 String)
(define-const var475 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var475)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var475!1 String)
(assert (= var475!1 ""))
(define-const var2296 String var475!1) ; Statement: r27 = $r32 
(define-const var250 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var1541 Int (String_length/-667254855 var814)) ; Statement: $i0 = interfaceinvoke r3.<java.lang.CharSequence: int length()>() 
 ; Statement: if i7 >= $i0 goto r28 = interfaceinvoke r26.<java.util.List: java.util.Iterator iterator()>() 
(assert (>= var250 var1541)) ; Cond: i7 >= $i0 
(define-const var1751 Iterator (var2068_iterator/-912451715 (cast-from-var1898-to-var2068 var977))) ; Statement: r28 = interfaceinvoke r26.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1011 Bool (Iterator_hasNext/-1669924200 var1751)) ; Statement: $z0 = interfaceinvoke r28.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return r26 
(assert (= (ite var1011 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r26 
(check-sat)
(get-model)
(get-unsat-core)
; {var1898-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2068_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1898-to-var2068=([java.util.ArrayList], java.util.List), cast-from-String-to-var233=([java.lang.StringBuilder], java.lang.Object), String_length/-667254855=([java.lang.CharSequence], int), var2068_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var814=r3, var1898=java.util.ArrayList, var3364=$r30, var977=r26, var3137=$r31, var2068=java.util.List, var233=java.lang.Object, var475=$r32, var2296=r27, var250=i7, var1541=$i0, var1751=r28, var1011=$z0}
; {r3=var814, java.util.ArrayList=var1898, $r30=var3364, r26=var977, $r31=var3137, java.util.List=var2068, java.lang.Object=var233, $r32=var475, r27=var2296, i7=var250, $i0=var1541, r28=var1751, $z0=var1011}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.CharSequence: int length()>": 1}
;stmts r3 := @parameter0: java.lang.CharSequence;	$r30 = new java.util.ArrayList;	specialinvoke $r30.<java.util.ArrayList: void <init>()>();	r26 = $r30;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	interfaceinvoke $r30.<java.util.List: boolean add(java.lang.Object)>($r31);	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	r27 = $r32;	i7 = 0;	$i0 = interfaceinvoke r3.<java.lang.CharSequence: int length()>();	if i7 >= $i0 goto r28 = interfaceinvoke r26.<java.util.List: java.util.Iterator iterator()>();	r28 = interfaceinvoke r26.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r28.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return r26;	return r26
;block_num 5