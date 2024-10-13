(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3299 0)
(declare-sort var300 0)
(declare-sort var2400 0)
(declare-sort var2638 0)
(declare-sort var3550 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var300_checkNotNull/1446102589 (var2400) var2400)
(declare-fun cast-from-String-to-var2400 (String) var2400)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2638_getHostAndPortFromBracketedHost/-185005293 (String) (Array Int String))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3550_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun var2638-init () var2638)
(declare-fun <init>/-508129728 (var2638 String Int Bool) void)
(declare-const null-String String)
(declare-const var2208 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2208 null-String)))
;(assert (var300_checkNotNull/1446102589 (cast-from-String-to-var2400 var2208))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var2208!1 String)
(define-const var3786 String null-String) ; Statement: r9 = null 
(define-const var1449 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(assert true)
(define-const var2156 Bool (startsWith/-1785782452 var2208!1 "[")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("[") 
 ; Statement: if $z0 == 0 goto i3 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58) 
(assert (not (= (ite var2156 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var448 (Array Int String) (var2638_getHostAndPortFromBracketedHost/-185005293 var2208!1)) ; Statement: r10 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: java.lang.String[] getHostAndPortFromBracketedHost(java.lang.String)>(r0) 
(define-const var3641 String (select var448 0)) ; Statement: r11 = r10[0] 
(define-const var3786!1 String (select var448 1)) ; Statement: r9 = r10[1] 
 ; Statement: goto [?= $i9 = (int) -1] 
(assert true) ; Non Conditional
(define-const var3676 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
(define-const var2912 Int var3676) ; Statement: i4 = $i9 
(define-const var1738 Bool (var3550_isNullOrEmpty/1886904788 var3786!1)) ; Statement: $z6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r9) 
 ; Statement: if $z6 != 0 goto $r14 = new com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort 
(assert (not (= (ite var1738 1 0) 0))) ; Cond: $z6 != 0 
(define-const var2168 var2638 var2638-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort 
(assert true)
;(assert (<init>/-508129728 var2168 var3641 var2912 var1449)) ; Statement: specialinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: void <init>(java.lang.String,int,boolean)>(r11, i4, z4) 

(declare-const var2168!1 var2638)
(declare-const var3641!1 String)
(declare-const var2912!1 Int)
(declare-const var1449!1 Bool)
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var300_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var2400=([java.lang.String], java.lang.Object), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2638_getHostAndPortFromBracketedHost/-185005293=([java.lang.String], java.lang.String[]), cast-from-Int-to-Int=([int], int), var3550_isNullOrEmpty/1886904788=([java.lang.String], boolean), var2638-init=([], com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort), <init>/-508129728=([com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort, java.lang.String, int, boolean], void)}
; {var2208=r0, var3299=null_type, var300=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2400=java.lang.Object, var3786=r9, var1449=z4, var2156=$z0, var2638=com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort, var448=r10, var3641=r11, var3676=$i9, var2912=i4, var3550=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var1738=$z6, var2168=$r14}
; {r0=var2208, null_type=var3299, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var300, java.lang.Object=var2400, r9=var3786, z4=var1449, $z0=var2156, com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort=var2638, r10=var448, r11=var3641, $i9=var3676, i4=var2912, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var3550, $z6=var1738, $r14=var2168}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	r9 = null;	z4 = 0;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("[");	if $z0 == 0 goto i3 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58);	r10 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: java.lang.String[] getHostAndPortFromBracketedHost(java.lang.String)>(r0);	r11 = r10[0];	r9 = r10[1];	goto [?= $i9 = (int) -1];	$i9 = (int) -1;	i4 = $i9;	$z6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r9);	if $z6 != 0 goto $r14 = new com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort;	$r14 = new com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort;	specialinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: void <init>(java.lang.String,int,boolean)>(r11, i4, z4);	return $r14
;block_num 4