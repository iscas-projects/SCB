(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1911 0)
(declare-sort var322 0)
(declare-sort var3122 0)
(declare-sort var1331 0)
(declare-sort var3077 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var322_builder/-311177978 () String)
(declare-fun field/-397091132 (var1911) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun direction/-397091132 (var1911) var3122)
(declare-fun cast-from-String-to-var1331 (String) var1331)
(declare-fun append/-1031950772 (String var3077) String)
(declare-fun cast-from-var1331-to-var3077 (var1331) var3077)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1911 var1911)
(declare-const null-var3122 var3122)
(declare-const var421 var1911) ; Statement: r0 := @this: cn.hutool.db.sql.Order 
(assert (not (= var421 null-var1911)))
(define-const var293 String var322_builder/-311177978) ; Statement: $r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(define-const var3502 String (field/-397091132 var421)) ; Statement: $r1 = r0.<cn.hutool.db.sql.Order: java.lang.String field> 
(assert true)
(define-const var2030 String (append/672562846 var293 var3502)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var293!1 String)
(assert (= var293!1 (str.++ var293 var3502)))
(assert true)
(define-const var1634 String (append/672562846 var2030 " ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2030!1 String)
(assert (= var2030!1 (str.++ var2030 " ")))
(define-const var3565 var3122 (direction/-397091132 var421)) ; Statement: $r4 = r0.<cn.hutool.db.sql.Order: cn.hutool.db.sql.Direction direction> 
 ; Statement: if null != $r4 goto $r8 = r0.<cn.hutool.db.sql.Order: cn.hutool.db.sql.Direction direction> 
(assert (not (not (= null-var3122 var3565)))) ; Negate: Cond: null != $r4  
(define-const var1800 var1331 (cast-from-String-to-var1331 "")) ; Statement: $r8 = "" 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2705 String (append/-1031950772 var1634 (cast-from-var1331-to-var3077 var1800))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var1634!1 String)
(assert (str.prefixof var1634 var1634!1))
(assert true)
(define-const var1434 String (toString/-2075883882 var2705)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var322_builder/-311177978=([], java.lang.StringBuilder), field/-397091132=([cn.hutool.db.sql.Order], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), direction/-397091132=([cn.hutool.db.sql.Order], cn.hutool.db.sql.Direction), cast-from-String-to-var1331=([java.lang.String], java.io.Serializable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1331-to-var3077=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1911=cn.hutool.db.sql.Order, var421=r0, var322=cn.hutool.core.util.StrUtil, var293=$r2, var3502=$r1, var2030=$r3, var1634=$r5, var3122=cn.hutool.db.sql.Direction, var3565=$r4, var1331=java.io.Serializable, var1800=$r8, var3077=java.lang.Object, var2705=$r6, var1434=$r7}
; {cn.hutool.db.sql.Order=var1911, r0=var421, cn.hutool.core.util.StrUtil=var322, $r2=var293, $r1=var3502, $r3=var2030, $r5=var1634, cn.hutool.db.sql.Direction=var3122, $r4=var3565, java.io.Serializable=var1331, $r8=var1800, java.lang.Object=var3077, $r6=var2705, $r7=var1434}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.db.sql.Order;	$r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	$r1 = r0.<cn.hutool.db.sql.Order: java.lang.String field>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r4 = r0.<cn.hutool.db.sql.Order: cn.hutool.db.sql.Direction direction>;	if null != $r4 goto $r8 = r0.<cn.hutool.db.sql.Order: cn.hutool.db.sql.Direction direction>;	$r8 = "";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3