(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2223 0)
(declare-sort var1219 0)
(declare-sort var3354 0)
(declare-sort var2075 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun columns/862875026 (var2223) var1219)
(declare-fun var1219_size/-959786421 (var1219) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun var1219_iterator/-912451715 (var1219) Iterator)
(declare-fun columnAliases/862875026 (var2223) var1219)
(declare-fun var3354-init () var3354)
(declare-fun <init>/451842749 (var3354) void)
(declare-fun usedAliases/862875026 (var2223) (Array Int String))
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun extraSelectList/862875026 (var2223) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2223 var2223)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-String String)
(declare-const var96 var2223) ; Statement: r1 := @this: org.hibernate.sql.SelectFragment 
(assert (not (= var96 null-var2223)))
(define-const var3127 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var134 var1219 (columns/862875026 var96)) ; Statement: $r2 = r1.<org.hibernate.sql.SelectFragment: java.util.List columns> 
(define-const var2269 Int (var1219_size/-959786421 var134)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
(define-const var836 Int (* var2269 10)) ; Statement: $i1 = $i0 * 10 
(assert true)
;(assert (<init>/543593434 var3127 var836)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3127!1 String)
(declare-const var836!1 Int)
(define-const var3160 var1219 (columns/862875026 var96)) ; Statement: $r3 = r1.<org.hibernate.sql.SelectFragment: java.util.List columns> 
(define-const var2473 Iterator (var1219_iterator/-912451715 var3160)) ; Statement: r4 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(define-const var778 var1219 (columnAliases/862875026 var96)) ; Statement: $r5 = r1.<org.hibernate.sql.SelectFragment: java.util.List columnAliases> 
(define-const var3833 Iterator (var1219_iterator/-912451715 var778)) ; Statement: r6 = interfaceinvoke $r5.<java.util.List: java.util.Iterator iterator()>() 
(define-const var3951 var3354 var3354-init) ; Statement: $r7 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var3951)) ; Statement: specialinvoke $r7.<java.util.HashSet: void <init>()>() 

(declare-const var3951!1 var3354)
(define-const var3000 (Array Int String) (usedAliases/862875026 var96)) ; Statement: $r8 = r1.<org.hibernate.sql.SelectFragment: java.lang.String[] usedAliases> 
 ; Statement: if $r8 == null goto $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
(assert (= var3000 null-__Array__Int__String__)) ; Cond: $r8 == null 
(define-const var3715 Bool (Iterator_hasNext/-1669924200 var2473)) ; Statement: $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r9 = r1.<org.hibernate.sql.SelectFragment: java.lang.String extraSelectList> 
(assert (= (ite var3715 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2286 String (extraSelectList/862875026 var96)) ; Statement: $r9 = r1.<org.hibernate.sql.SelectFragment: java.lang.String extraSelectList> 
 ; Statement: if $r9 == null goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2286 null-String)) ; Cond: $r9 == null 
(assert true)
(define-const var1896 String (toString/-2075883882 var3127!1)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), columns/862875026=([org.hibernate.sql.SelectFragment], java.util.List), var1219_size/-959786421=([java.util.List], int), <init>/543593434=([java.lang.StringBuilder, int], void), var1219_iterator/-912451715=([java.util.List], java.util.Iterator), columnAliases/862875026=([org.hibernate.sql.SelectFragment], java.util.List), var3354-init=([], java.util.HashSet), <init>/451842749=([java.util.HashSet], void), usedAliases/862875026=([org.hibernate.sql.SelectFragment], java.lang.String[]), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), extraSelectList/862875026=([org.hibernate.sql.SelectFragment], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2223=org.hibernate.sql.SelectFragment, var96=r1, var3127=$r0, var1219=java.util.List, var134=$r2, var2269=$i0, var836=$i1, var3160=$r3, var2473=r4, var778=$r5, var3833=r6, var3354=java.util.HashSet, var3951=$r7, var3000=$r8, var3715=$z1, var2286=$r9, var2075=null_type, var1896=$r10}
; {org.hibernate.sql.SelectFragment=var2223, r1=var96, $r0=var3127, java.util.List=var1219, $r2=var134, $i0=var2269, $i1=var836, $r3=var3160, r4=var2473, $r5=var778, r6=var3833, java.util.HashSet=var3354, $r7=var3951, $r8=var3000, $z1=var3715, $r9=var2286, null_type=var2075, $r10=var1896}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.sql.SelectFragment;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.hibernate.sql.SelectFragment: java.util.List columns>;	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	$i1 = $i0 * 10;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r3 = r1.<org.hibernate.sql.SelectFragment: java.util.List columns>;	r4 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$r5 = r1.<org.hibernate.sql.SelectFragment: java.util.List columnAliases>;	r6 = interfaceinvoke $r5.<java.util.List: java.util.Iterator iterator()>();	$r7 = new java.util.HashSet;	specialinvoke $r7.<java.util.HashSet: void <init>()>();	$r8 = r1.<org.hibernate.sql.SelectFragment: java.lang.String[] usedAliases>;	if $r8 == null goto $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	$z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r9 = r1.<org.hibernate.sql.SelectFragment: java.lang.String extraSelectList>;	$r9 = r1.<org.hibernate.sql.SelectFragment: java.lang.String extraSelectList>;	if $r9 == null goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 4