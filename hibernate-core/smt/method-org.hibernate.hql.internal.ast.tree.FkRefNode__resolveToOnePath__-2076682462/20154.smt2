(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3886 0)
(declare-sort var3074 0)
(declare-sort var1615 0)
(declare-sort var3517 0)
(declare-sort var57 0)
(declare-sort var818 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toOnePath/1824275180 (var3886) var3074)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPath/1881441684 (var3074) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3517-init () var3517)
(declare-fun var57-init () var57)
(declare-fun <init>/741104877 (var57 String) void)
(declare-fun cast-from-var57-to-var818 (var57) var818)
(declare-fun <init>/1292940450 (var3517 String var818) void)
(declare-fun cast-from-var3517-to-var1615 (var3517) var1615)
(declare-const null-var3886 var3886)
(declare-const null-var3074 var3074)
(declare-const null-var1615 var1615)
(declare-const var1120 var3886) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.FkRefNode 
(assert (not (= var1120 null-var3886)))
(define-const var1154 var3074 (toOnePath/1824275180 var1120)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.ast.tree.FkRefNode: org.hibernate.hql.internal.ast.tree.FromReferenceNode toOnePath> 
 ; Statement: if $r1 != null goto $z0 = <org.hibernate.hql.internal.ast.tree.FkRefNode: boolean $assertionsDisabled> 
(assert (not (not (= var1154 null-var3074)))) ; Negate: Cond: $r1 != null  
(declare-const var3566 var1615) ; Statement: $r5 := @caughtexception 
(assert (not (= var3566 null-var1615)))
(define-const var2365 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2365)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2365!1 String)
(assert (= var2365!1 ""))
(assert true)
(define-const var881 String (append/672562846 var2365!1 "Unable to resolve to-one path `fk(")) ; Statement: $r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve to-one path `fk(") 
(declare-const var2365!2 String)
(assert (= var2365!2 (str.++ var2365!1 "Unable to resolve to-one path `fk(")))
(define-const var2856 var3074 (toOnePath/1824275180 var1120)) ; Statement: $r7 = r0.<org.hibernate.hql.internal.ast.tree.FkRefNode: org.hibernate.hql.internal.ast.tree.FromReferenceNode toOnePath> 
(assert true)
(define-const var404 String (getPath/1881441684 var2856)) ; Statement: $r8 = virtualinvoke $r7.<org.hibernate.hql.internal.ast.tree.FromReferenceNode: java.lang.String getPath()>() 
(assert true)
(define-const var305 String (append/672562846 var881 var404)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var881!1 String)
(assert (= var881!1 (str.++ var881 var404)))
(assert true)
(define-const var1271 String (append/672562846 var305 "`)")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`)") 
(declare-const var305!1 String)
(assert (= var305!1 (str.++ var305 "`)")))
(assert true)
(define-const var1439 String (toString/-2075883882 var1271)) ; Statement: r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var942 var3517 var3517-init) ; Statement: $r17 = new org.hibernate.QueryException 
(define-const var615 var57 var57-init) ; Statement: $r16 = new org.hibernate.hql.internal.ast.InvalidPathException 
(assert true)
;(assert (<init>/741104877 var615 var1439)) ; Statement: specialinvoke $r16.<org.hibernate.hql.internal.ast.InvalidPathException: void <init>(java.lang.String)>(r12) 

(declare-const var615!1 var57)
(declare-const var1439!1 String)
(define-const var992 var818 (cast-from-var57-to-var818 var615!1)) ; Statement: $r19 = (java.lang.Exception) $r16 
(assert true)
;(assert (<init>/1292940450 var942 var1439!1 var992)) ; Statement: specialinvoke $r17.<org.hibernate.QueryException: void <init>(java.lang.String,java.lang.Exception)>(r12, $r19) 

(declare-const var942!1 var3517)
(declare-const var1439!2 String)
(declare-const var992!1 var818)
(define-const var2286 var1615 (cast-from-var3517-to-var1615 var942!1)) ; Statement: $r20 = (java.lang.Throwable) $r17 
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {toOnePath/1824275180=([org.hibernate.hql.internal.ast.tree.FkRefNode], org.hibernate.hql.internal.ast.tree.FromReferenceNode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPath/1881441684=([org.hibernate.hql.internal.ast.tree.FromReferenceNode], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3517-init=([], org.hibernate.QueryException), var57-init=([], org.hibernate.hql.internal.ast.InvalidPathException), <init>/741104877=([org.hibernate.hql.internal.ast.InvalidPathException, java.lang.String], void), cast-from-var57-to-var818=([org.hibernate.hql.internal.ast.InvalidPathException], java.lang.Exception), <init>/1292940450=([org.hibernate.QueryException, java.lang.String, java.lang.Exception], void), cast-from-var3517-to-var1615=([org.hibernate.QueryException], java.lang.Throwable)}
; {var3886=org.hibernate.hql.internal.ast.tree.FkRefNode, var1120=r0, var3074=org.hibernate.hql.internal.ast.tree.FromReferenceNode, var1154=$r1, var1615=java.lang.Throwable, var3566=$r5, var2365=$r15, var881=$r9, var2856=$r7, var404=$r8, var305=$r10, var1271=$r11, var1439=r12, var3517=org.hibernate.QueryException, var942=$r17, var57=org.hibernate.hql.internal.ast.InvalidPathException, var615=$r16, var818=java.lang.Exception, var992=$r19, var2286=$r20}
; {org.hibernate.hql.internal.ast.tree.FkRefNode=var3886, r0=var1120, org.hibernate.hql.internal.ast.tree.FromReferenceNode=var3074, $r1=var1154, java.lang.Throwable=var1615, $r5=var3566, $r15=var2365, $r9=var881, $r7=var2856, $r8=var404, $r10=var305, $r11=var1271, r12=var1439, org.hibernate.QueryException=var3517, $r17=var942, org.hibernate.hql.internal.ast.InvalidPathException=var57, $r16=var615, java.lang.Exception=var818, $r19=var992, $r20=var2286}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.FkRefNode;	$r1 = r0.<org.hibernate.hql.internal.ast.tree.FkRefNode: org.hibernate.hql.internal.ast.tree.FromReferenceNode toOnePath>;	if $r1 != null goto $z0 = <org.hibernate.hql.internal.ast.tree.FkRefNode: boolean $assertionsDisabled>;	$r5 := @caughtexception;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve to-one path `fk(");	$r7 = r0.<org.hibernate.hql.internal.ast.tree.FkRefNode: org.hibernate.hql.internal.ast.tree.FromReferenceNode toOnePath>;	$r8 = virtualinvoke $r7.<org.hibernate.hql.internal.ast.tree.FromReferenceNode: java.lang.String getPath()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`)");	r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = new org.hibernate.QueryException;	$r16 = new org.hibernate.hql.internal.ast.InvalidPathException;	specialinvoke $r16.<org.hibernate.hql.internal.ast.InvalidPathException: void <init>(java.lang.String)>(r12);	$r19 = (java.lang.Exception) $r16;	specialinvoke $r17.<org.hibernate.QueryException: void <init>(java.lang.String,java.lang.Exception)>(r12, $r19);	$r20 = (java.lang.Throwable) $r17;	throw $r20
;block_num 2