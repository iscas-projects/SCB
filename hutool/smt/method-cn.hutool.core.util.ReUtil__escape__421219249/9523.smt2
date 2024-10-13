(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1561 0)
(declare-sort var192 0)
(declare-sort var3301 0)
(declare-sort var1951 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3301_valueOf/-1186540555 (Int) var3301)
(declare-fun var1561_contains/1636690605 (var1561 var1951) Bool)
(declare-fun cast-from-var3301-to-var1951 (var3301) var1951)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var192-RE_KEYS var1561)
(declare-const var307 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var307 null-Int)))
(define-const var3036 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3036)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3036!1 String)
(assert (= var3036!1 ""))
(define-const var628 var1561 var192-RE_KEYS) ; Statement: $r1 = <cn.hutool.core.util.ReUtil: java.util.Set RE_KEYS> 
(define-const var398 var3301 (var3301_valueOf/-1186540555 var307)) ; Statement: $r2 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(c0) 
(define-const var3196 Bool (var1561_contains/1636690605 var628 (cast-from-var3301-to-var1951 var398))) ; Statement: $z0 = interfaceinvoke $r1.<java.util.Set: boolean contains(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(assert (= (ite var3196 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/-1166366385 var3036!1 var307)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var3036!2 String)
(assert (str.prefixof var3036!1 var3036!2))
(assert true)
(define-const var308 String (toString/-2075883882 var3036!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3301_valueOf/-1186540555=([char], java.lang.Character), var1561_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-var3301-to-var1951=([java.lang.Character], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var307=c0, var3036=$r0, var1561=java.util.Set, var192=cn.hutool.core.util.ReUtil, var628=$r1, var3301=java.lang.Character, var398=$r2, var1951=java.lang.Object, var3196=$z0, var308=$r3}
; {c0=var307, $r0=var3036, java.util.Set=var1561, cn.hutool.core.util.ReUtil=var192, $r1=var628, java.lang.Character=var3301, $r2=var398, java.lang.Object=var1951, $z0=var3196, $r3=var308}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts c0 := @parameter0: char;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = <cn.hutool.core.util.ReUtil: java.util.Set RE_KEYS>;	$r2 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(c0);	$z0 = interfaceinvoke $r1.<java.util.Set: boolean contains(java.lang.Object)>($r2);	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 2