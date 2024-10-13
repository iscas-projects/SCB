(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1722 0)
(declare-sort var529 0)
(declare-sort var2662 0)
(declare-sort var830 0)
(declare-sort var2817 0)
(declare-sort var3077 0)
(declare-sort var2562 0)
(declare-sort var2899 0)
(declare-sort var3349 0)
(declare-sort var2765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2662_checkNotNull/1446102589 (var830) var830)
(declare-fun cast-from-String-to-var830 (String) var830)
(declare-fun cast-from-var529-to-var830 (var529) var830)
(declare-fun var2817_normalizeToken/112887142 (String) String)
(declare-fun var2662_checkArgument/-972017905 (Bool var830) void)
(declare-fun var2562_builder/-1094253099 () var3077)
(declare-fun var529_entries/-1874021382 (var529) var2899)
(declare-fun var2899_iterator/-1617794947 (var2899) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2817-init () var2817)
(declare-fun build/361856880 (var3077) var2562)
(declare-fun <init>/-1877597229 (var2817 String String var2562) void)
(declare-fun var3349_get/1088891777 (var3349 var830) var830)
(declare-fun cast-from-var2817-to-var830 (var2817) var830)
(declare-fun cast-from-var830-to-var2817 (var830) var2817)
(declare-fun var2765_firstNonNull/-2113811750 (var830 var830) var830)
(declare-const null-String String)
(declare-const null-var529 var529)
(declare-const var2817-KNOWN_TYPES var3349)
(declare-const var2599 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2599 null-String)))
(declare-const var3584 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3584 null-String)))
(declare-const var590 var529) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.common.collect.Multimap 
(assert (not (= var590 null-var529)))
;(assert (var2662_checkNotNull/1446102589 (cast-from-String-to-var830 var2599))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var2599!1 String)
;(assert (var2662_checkNotNull/1446102589 (cast-from-String-to-var830 var3584))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1) 

(declare-const var3584!1 String)
;(assert (var2662_checkNotNull/1446102589 (cast-from-var529-to-var830 var590))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r2) 

(declare-const var590!1 var529)
(define-const var3698 String (var2817_normalizeToken/112887142 var2599!1)) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String normalizeToken(java.lang.String)>(r0) 
(define-const var3489 String (var2817_normalizeToken/112887142 var3584!1)) ; Statement: r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String normalizeToken(java.lang.String)>(r1) 
(define-const var2333 String "*") ; Statement: $r5 = "*" 
(assert true)
(define-const var1193 Bool (= var2333 var3698)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto $z2 = 1 
(assert (= (ite var1193 1 0) 0)) ; Cond: $z0 == 0 
(define-const var221 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z2, "A wildcard type cannot be used with a non-wildcard subtype")] 
(assert true) ; Non Conditional
;(assert (var2662_checkArgument/-972017905 var221 (cast-from-String-to-var830 "A wildcard type cannot be used with a non-wildcard subtype"))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z2, "A wildcard type cannot be used with a non-wildcard subtype") 

(declare-const var221!1 Bool)
(declare-const var1026 String)
(define-const var102 var3077 var2562_builder/-1094253099) ; Statement: $r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder builder()>() 
(define-const var3974 var2899 (var529_entries/-1874021382 var590!1)) ; Statement: $r6 = interfaceinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Multimap: java.util.Collection entries()>() 
(define-const var3697 Iterator (var2899_iterator/-1617794947 var3974)) ; Statement: $r24 = interfaceinvoke $r6.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var301 Bool (Iterator_hasNext/-1669924200 var3697)) ; Statement: $z3 = interfaceinvoke $r24.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto $r7 = new com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType 
(assert (= (ite var301 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3043 var2817 var2817-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType 
(assert true)
(define-const var3271 var2562 (build/361856880 var102)) ; Statement: $r8 = virtualinvoke $r23.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap build()>() 
(assert true)
;(assert (<init>/-1877597229 var3043 var3698 var3489 var3271)) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: void <init>(java.lang.String,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap)>(r3, r4, $r8) 

(declare-const var3043!1 var2817)
(declare-const var3698!1 String)
(declare-const var3489!1 String)
(declare-const var3271!1 var2562)
(define-const var2219 var3349 var2817-KNOWN_TYPES) ; Statement: $r9 = <com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.util.Map KNOWN_TYPES> 
(define-const var804 var830 (var3349_get/1088891777 var2219 (cast-from-var2817-to-var830 var3043!1))) ; Statement: $r10 = interfaceinvoke $r9.<java.util.Map: java.lang.Object get(java.lang.Object)>($r7) 
(define-const var2602 var2817 (cast-from-var830-to-var2817 var804)) ; Statement: $r11 = (com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType) $r10 
(define-const var2224 var830 (var2765_firstNonNull/-2113811750 (cast-from-var2817-to-var830 var2602) (cast-from-var2817-to-var830 var3043!1))) ; Statement: $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects: java.lang.Object firstNonNull(java.lang.Object,java.lang.Object)>($r11, $r7) 
(define-const var1154 var2817 (cast-from-var830-to-var2817 var2224)) ; Statement: $r13 = (com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType) $r12 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var2662_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var830=([java.lang.String], java.lang.Object), cast-from-var529-to-var830=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Multimap], java.lang.Object), var2817_normalizeToken/112887142=([java.lang.String], java.lang.String), var2662_checkArgument/-972017905=([boolean, java.lang.Object], void), var2562_builder/-1094253099=([], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder), var529_entries/-1874021382=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Multimap], java.util.Collection), var2899_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2817-init=([], com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType), build/361856880=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap), <init>/-1877597229=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType, java.lang.String, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap], void), var3349_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var2817-to-var830=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType], java.lang.Object), cast-from-var830-to-var2817=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType), var2765_firstNonNull/-2113811750=([java.lang.Object, java.lang.Object], java.lang.Object)}
; {var2599=r0, var1722=null_type, var3584=r1, var529=com.google.javascript.jscomp.jarjar.com.google.common.collect.Multimap, var590=r2, var2662=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var830=java.lang.Object, var2817=com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType, var3698=r3, var3489=r4, var2333=$r5, var1193=$z0, var221=$z2, var1026="A wildcard type cannot be used with a non-wildcard subtype", var3077=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder, var2562=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap, var102=$r23, var2899=java.util.Collection, var3974=$r6, var3697=$r24, var301=$z3, var3043=$r7, var3271=$r8, var3349=java.util.Map, var2219=$r9, var804=$r10, var2602=$r11, var2765=com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects, var2224=$r12, var1154=$r13}
; {r0=var2599, null_type=var1722, r1=var3584, com.google.javascript.jscomp.jarjar.com.google.common.collect.Multimap=var529, r2=var590, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2662, java.lang.Object=var830, com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType=var2817, r3=var3698, r4=var3489, $r5=var2333, $z0=var1193, $z2=var221, "A wildcard type cannot be used with a non-wildcard subtype"=var1026, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder=var3077, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap=var2562, $r23=var102, java.util.Collection=var2899, $r6=var3974, $r24=var3697, $z3=var301, $r7=var3043, $r8=var3271, java.util.Map=var3349, $r9=var2219, $r10=var804, $r11=var2602, com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects=var2765, $r12=var2224, $r13=var1154}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.common.collect.Multimap;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r2);	r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String normalizeToken(java.lang.String)>(r0);	r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String normalizeToken(java.lang.String)>(r1);	$r5 = "*";	$z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto $z2 = 1;	$z2 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z2, "A wildcard type cannot be used with a non-wildcard subtype")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z2, "A wildcard type cannot be used with a non-wildcard subtype");	$r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder builder()>();	$r6 = interfaceinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Multimap: java.util.Collection entries()>();	$r24 = interfaceinvoke $r6.<java.util.Collection: java.util.Iterator iterator()>();	$z3 = interfaceinvoke $r24.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto $r7 = new com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType;	$r7 = new com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType;	$r8 = virtualinvoke $r23.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap build()>();	specialinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: void <init>(java.lang.String,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap)>(r3, r4, $r8);	$r9 = <com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.util.Map KNOWN_TYPES>;	$r10 = interfaceinvoke $r9.<java.util.Map: java.lang.Object get(java.lang.Object)>($r7);	$r11 = (com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType) $r10;	$r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects: java.lang.Object firstNonNull(java.lang.Object,java.lang.Object)>($r11, $r7);	$r13 = (com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType) $r12;	return $r13
;block_num 5