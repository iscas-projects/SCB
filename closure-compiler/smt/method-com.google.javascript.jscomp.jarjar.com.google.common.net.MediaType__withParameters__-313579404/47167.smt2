(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var945 0)
(declare-sort var2463 0)
(declare-sort var318 0)
(declare-sort var410 0)
(declare-sort var3429 0)
(declare-sort var1763 0)
(declare-sort var971 0)
(declare-sort var43 0)
(declare-sort var652 0)
(declare-sort var1328 0)
(declare-sort var2924 0)
(declare-sort var1947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var410_checkNotNull/1446102589 (var3429) var3429)
(declare-fun cast-from-String-to-var3429 (String) var3429)
(declare-fun cast-from-var318-to-var3429 (var318) var3429)
(declare-fun var945_normalizeToken/112887142 (String) String)
(declare-fun var971_builder/-1094253099 () var1763)
(declare-fun parameters/-470314271 (var945) var971)
(declare-fun entries/-2119379204 (var652) var43)
(declare-fun cast-from-var971-to-var652 (var971) var652)
(declare-fun iterator/-1273416924 (var43) var1328)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var1328-to-Iterator (var1328) Iterator)
(declare-fun var318_iterator/-693406491 (var318) Iterator)
(declare-fun var945-init () var945)
(declare-fun type/-470314271 (var945) String)
(declare-fun subtype/-470314271 (var945) String)
(declare-fun build/361856880 (var1763) var971)
(declare-fun <init>/-1877597229 (var945 String String var971) void)
(declare-fun var2924_get/1088891777 (var2924 var3429) var3429)
(declare-fun cast-from-var945-to-var3429 (var945) var3429)
(declare-fun cast-from-var3429-to-var945 (var3429) var945)
(declare-fun var1947_firstNonNull/-2113811750 (var3429 var3429) var3429)
(declare-const null-var945 var945)
(declare-const null-String String)
(declare-const null-var318 var318)
(declare-const var945-KNOWN_TYPES var2924)
(declare-const var3039 var945) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType 
(assert (not (= var3039 null-var945)))
(declare-const var1952 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1952 null-String)))
(declare-const var1732 var318) ; Statement: r1 := @parameter1: java.lang.Iterable 
(assert (not (= var1732 null-var318)))
;(assert (var410_checkNotNull/1446102589 (cast-from-String-to-var3429 var1952))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var1952!1 String)
;(assert (var410_checkNotNull/1446102589 (cast-from-var318-to-var3429 var1732))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1) 

(declare-const var1732!1 var318)
(define-const var267 String (var945_normalizeToken/112887142 var1952!1)) ; Statement: r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String normalizeToken(java.lang.String)>(r0) 
(define-const var1579 var1763 var971_builder/-1094253099) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder builder()>() 
(define-const var3338 var971 (parameters/-470314271 var3039)) ; Statement: $r5 = r4.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap parameters> 
(assert true)
(define-const var1975 var43 (entries/-2119379204 (cast-from-var971-to-var652 var3338))) ; Statement: $r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection entries()>() 
(assert true)
(define-const var3167 var1328 (iterator/-1273416924 var1975)) ; Statement: r24 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1653 Bool (Iterator_hasNext/-1669924200 (cast-from-var1328-to-Iterator var3167))) ; Statement: $z0 = interfaceinvoke r24.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r26 = interfaceinvoke r1.<java.lang.Iterable: java.util.Iterator iterator()>() 
(assert (= (ite var1653 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1568 Iterator (var318_iterator/-693406491 var1732!1)) ; Statement: r26 = interfaceinvoke r1.<java.lang.Iterable: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1337 Bool (Iterator_hasNext/-1669924200 var1568)) ; Statement: $z1 = interfaceinvoke r26.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r7 = new com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType 
(assert (= (ite var1337 1 0) 0)) ; Cond: $z1 == 0 
(define-const var924 var945 var945-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType 
(define-const var2366 String (type/-470314271 var3039)) ; Statement: $r8 = r4.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String type> 
(define-const var2240 String (subtype/-470314271 var3039)) ; Statement: $r9 = r4.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String subtype> 
(assert true)
(define-const var32 var971 (build/361856880 var1579)) ; Statement: $r10 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap build()>() 
(assert true)
;(assert (<init>/-1877597229 var924 var2366 var2240 var32)) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: void <init>(java.lang.String,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap)>($r8, $r9, $r10) 

(declare-const var924!1 var945)
(declare-const var2366!1 String)
(declare-const var2240!1 String)
(declare-const var32!1 var971)
(assert true)
(define-const var1507 Bool (= var267 "charset")) ; Statement: $z2 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("charset") 
 ; Statement: if $z2 != 0 goto $r11 = <com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.util.Map KNOWN_TYPES> 
(assert (not (= (ite var1507 1 0) 0))) ; Cond: $z2 != 0 
(define-const var1416 var2924 var945-KNOWN_TYPES) ; Statement: $r11 = <com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.util.Map KNOWN_TYPES> 
(define-const var3735 var3429 (var2924_get/1088891777 var1416 (cast-from-var945-to-var3429 var924!1))) ; Statement: $r12 = interfaceinvoke $r11.<java.util.Map: java.lang.Object get(java.lang.Object)>($r7) 
(define-const var3695 var945 (cast-from-var3429-to-var945 var3735)) ; Statement: $r13 = (com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType) $r12 
(define-const var2322 var3429 (var1947_firstNonNull/-2113811750 (cast-from-var945-to-var3429 var3695) (cast-from-var945-to-var3429 var924!1))) ; Statement: $r14 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects: java.lang.Object firstNonNull(java.lang.Object,java.lang.Object)>($r13, $r7) 
(define-const var2581 var945 (cast-from-var3429-to-var945 var2322)) ; Statement: $r15 = (com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType) $r14 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var410_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var3429=([java.lang.String], java.lang.Object), cast-from-var318-to-var3429=([java.lang.Iterable], java.lang.Object), var945_normalizeToken/112887142=([java.lang.String], java.lang.String), var971_builder/-1094253099=([], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder), parameters/-470314271=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap), entries/-2119379204=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultimap], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection), cast-from-var971-to-var652=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultimap), iterator/-1273416924=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection], com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var1328-to-Iterator=([com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator], java.util.Iterator), var318_iterator/-693406491=([java.lang.Iterable], java.util.Iterator), var945-init=([], com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType), type/-470314271=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType], java.lang.String), subtype/-470314271=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType], java.lang.String), build/361856880=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap), <init>/-1877597229=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType, java.lang.String, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap], void), var2924_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var945-to-var3429=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType], java.lang.Object), cast-from-var3429-to-var945=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType), var1947_firstNonNull/-2113811750=([java.lang.Object, java.lang.Object], java.lang.Object)}
; {var945=com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType, var3039=r4, var1952=r0, var2463=null_type, var318=java.lang.Iterable, var1732=r1, var410=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3429=java.lang.Object, var267=r2, var1763=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder, var971=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap, var1579=r3, var3338=$r5, var43=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection, var652=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultimap, var1975=$r6, var1328=com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator, var3167=r24, var1653=$z0, var1568=r26, var1337=$z1, var924=$r7, var2366=$r8, var2240=$r9, var32=$r10, var1507=$z2, var2924=java.util.Map, var1416=$r11, var3735=$r12, var3695=$r13, var1947=com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects, var2322=$r14, var2581=$r15}
; {com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType=var945, r4=var3039, r0=var1952, null_type=var2463, java.lang.Iterable=var318, r1=var1732, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var410, java.lang.Object=var3429, r2=var267, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder=var1763, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap=var971, r3=var1579, $r5=var3338, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection=var43, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultimap=var652, $r6=var1975, com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator=var1328, r24=var3167, $z0=var1653, r26=var1568, $z1=var1337, $r7=var924, $r8=var2366, $r9=var2240, $r10=var32, $z2=var1507, java.util.Map=var2924, $r11=var1416, $r12=var3735, $r13=var3695, com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects=var1947, $r14=var2322, $r15=var2581}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Iterable;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1);	r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String normalizeToken(java.lang.String)>(r0);	r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder builder()>();	$r5 = r4.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap parameters>;	$r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection entries()>();	r24 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z0 = interfaceinvoke r24.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r26 = interfaceinvoke r1.<java.lang.Iterable: java.util.Iterator iterator()>();	r26 = interfaceinvoke r1.<java.lang.Iterable: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r26.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r7 = new com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType;	$r7 = new com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType;	$r8 = r4.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String type>;	$r9 = r4.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String subtype>;	$r10 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap build()>();	specialinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: void <init>(java.lang.String,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap)>($r8, $r9, $r10);	$z2 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("charset");	if $z2 != 0 goto $r11 = <com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.util.Map KNOWN_TYPES>;	$r11 = <com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.util.Map KNOWN_TYPES>;	$r12 = interfaceinvoke $r11.<java.util.Map: java.lang.Object get(java.lang.Object)>($r7);	$r13 = (com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType) $r12;	$r14 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects: java.lang.Object firstNonNull(java.lang.Object,java.lang.Object)>($r13, $r7);	$r15 = (com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType) $r14;	return $r15
;block_num 6