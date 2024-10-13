(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2992 0)
(declare-sort var3627 0)
(declare-sort var1312 0)
(declare-sort var2980 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getString1/-1507444715 (var2992) var1312)
(declare-fun cast-from-var1312-to-var2980 (var1312) var2980)
(declare-fun var2980_render/-1233042088 (var2980 var3627) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getString2/-1507414924 (var2992) var1312)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2992 var2992)
(declare-const null-var3627 var3627)
(declare-const var1818 var2992) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.expression.ConcatExpression 
(assert (not (= var1818 null-var2992)))
(declare-const var3804 var3627) ; Statement: r3 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3804 null-var3627)))
(define-const var1817 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1817)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1817!1 String)
(assert (= var1817!1 ""))
(assert true)
(define-const var3450 String (append/-1166366385 var1817!1 40)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var1817!2 String)
(assert (str.prefixof var1817!1 var1817!2))
(assert true)
(define-const var3153 var1312 (getString1/-1507444715 var1818)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.ConcatExpression: javax.persistence.criteria.Expression getString1()>() 
(define-const var3271 var2980 (cast-from-var1312-to-var2980 var3153)) ; Statement: $r4 = (org.hibernate.query.criteria.internal.Renderable) $r2 
(define-const var3191 String (var2980_render/-1233042088 var3271 var3804)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var460 String (append/672562846 var3450 var3191)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3450!1 String)
(assert (= var3450!1 (str.++ var3450 var3191)))
(assert true)
(define-const var3432 String (append/672562846 var460 " || ")) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" || ") 
(declare-const var460!1 String)
(assert (= var460!1 (str.++ var460 " || ")))
(assert true)
(define-const var263 var1312 (getString2/-1507414924 var1818)) ; Statement: $r8 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.ConcatExpression: javax.persistence.criteria.Expression getString2()>() 
(define-const var2739 var2980 (cast-from-var1312-to-var2980 var263)) ; Statement: $r9 = (org.hibernate.query.criteria.internal.Renderable) $r8 
(define-const var56 String (var2980_render/-1233042088 var2739 var3804)) ; Statement: $r10 = interfaceinvoke $r9.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var1051 String (append/672562846 var3432 var56)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3432!1 String)
(assert (= var3432!1 (str.++ var3432 var56)))
(assert true)
(define-const var151 String (append/-1166366385 var1051 41)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1051!1 String)
(assert (str.prefixof var1051 var1051!1))
(assert true)
(define-const var2006 String (toString/-2075883882 var151)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getString1/-1507444715=([org.hibernate.query.criteria.internal.expression.ConcatExpression], javax.persistence.criteria.Expression), cast-from-var1312-to-var2980=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var2980_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getString2/-1507414924=([org.hibernate.query.criteria.internal.expression.ConcatExpression], javax.persistence.criteria.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2992=org.hibernate.query.criteria.internal.expression.ConcatExpression, var1818=r1, var3627=org.hibernate.query.criteria.internal.compile.RenderingContext, var3804=r3, var1817=$r0, var3450=$r6, var1312=javax.persistence.criteria.Expression, var3153=$r2, var2980=org.hibernate.query.criteria.internal.Renderable, var3271=$r4, var3191=$r5, var460=$r7, var3432=$r11, var263=$r8, var2739=$r9, var56=$r10, var1051=$r12, var151=$r13, var2006=$r14}
; {org.hibernate.query.criteria.internal.expression.ConcatExpression=var2992, r1=var1818, org.hibernate.query.criteria.internal.compile.RenderingContext=var3627, r3=var3804, $r0=var1817, $r6=var3450, javax.persistence.criteria.Expression=var1312, $r2=var3153, org.hibernate.query.criteria.internal.Renderable=var2980, $r4=var3271, $r5=var3191, $r7=var460, $r11=var3432, $r8=var263, $r9=var2739, $r10=var56, $r12=var1051, $r13=var151, $r14=var2006}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.expression.ConcatExpression;	r3 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.ConcatExpression: javax.persistence.criteria.Expression getString1()>();	$r4 = (org.hibernate.query.criteria.internal.Renderable) $r2;	$r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" || ");	$r8 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.ConcatExpression: javax.persistence.criteria.Expression getString2()>();	$r9 = (org.hibernate.query.criteria.internal.Renderable) $r8;	$r10 = interfaceinvoke $r9.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1