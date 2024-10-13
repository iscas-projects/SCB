(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2408 0)
(declare-sort var1524 0)
(declare-sort var1860 0)
(declare-sort var74 0)
(declare-sort var2596 0)
(declare-sort var652 0)
(declare-sort var1124 0)
(declare-sort var3680 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun command/-72260659 (var2408) var2596)
(declare-fun getType/1983465590 (var2596) var652)
(declare-fun ordinal/-291641772 (var1124) Int)
(declare-fun cast-from-var652-to-var1124 (var652) var1124)
(declare-fun var3680-init () var3680)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1244095687 (var2596) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1937591867 (var3680 String) void)
(declare-const null-var2408 var2408)
(declare-const null-var1524 var1524)
(declare-const null-__Array__Int__var1860__ (Array Int var1860))
(declare-const var74-$SwitchMap$org$apache$ibatis$mapping$SqlCommandType (Array Int Int))
(declare-const var1527 var2408) ; Statement: r0 := @this: org.apache.ibatis.binding.MapperMethod 
(assert (not (= var1527 null-var2408)))
(declare-const var3702 var1524) ; Statement: r4 := @parameter0: org.apache.ibatis.session.SqlSession 
(assert (not (= var3702 null-var1524)))
(declare-const var1459 (Array Int var1860)) ; Statement: r24 := @parameter1: java.lang.Object[] 
(assert (not (= var1459 null-__Array__Int__var1860__)))
(define-const var3037 (Array Int Int) var74-$SwitchMap$org$apache$ibatis$mapping$SqlCommandType) ; Statement: $r2 = <org.apache.ibatis.binding.MapperMethod$1: int[] $SwitchMap$org$apache$ibatis$mapping$SqlCommandType> 
(define-const var887 var2596 (command/-72260659 var1527)) ; Statement: $r1 = r0.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$SqlCommand command> 
(assert true)
(define-const var2823 var652 (getType/1983465590 var887)) ; Statement: $r3 = virtualinvoke $r1.<org.apache.ibatis.binding.MapperMethod$SqlCommand: org.apache.ibatis.mapping.SqlCommandType getType()>() 
(assert true)
(define-const var2588 Int (ordinal/-291641772 (cast-from-var652-to-var1124 var2823))) ; Statement: $i0 = virtualinvoke $r3.<org.apache.ibatis.mapping.SqlCommandType: int ordinal()>() 
(define-const var1838 Int (select var3037 var2588)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r39 = r0.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$MethodSignature method>;     case 2: goto $r36 = r0.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$MethodSignature method>;     case 3: goto $r33 = r0.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$MethodSignature method>;     case 4: goto $r20 = r0.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$MethodSignature method>;     case 5: goto r50 = interfaceinvoke r4.<org.apache.ibatis.session.SqlSession: java.util.List flushStatements()>();     default: goto $r42 = new org.apache.ibatis.binding.BindingException; } 
(assert (and (not (= var1838 5)) (and (not (= var1838 4)) (and (not (= var1838 3)) (and (not (= var1838 2)) (and (not (= var1838 1)) true)))))) ; Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional     
(define-const var2746 var3680 var3680-init) ; Statement: $r42 = new org.apache.ibatis.binding.BindingException 
(define-const var893 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var893)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var893!1 String)
(assert (= var893!1 ""))
(assert true)
(define-const var1288 String (append/672562846 var893!1 "Unknown execution method for: ")) ; Statement: $r46 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown execution method for: ") 
(declare-const var893!2 String)
(assert (= var893!2 (str.++ var893!1 "Unknown execution method for: ")))
(define-const var1661 var2596 (command/-72260659 var1527)) ; Statement: $r44 = r0.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$SqlCommand command> 
(assert true)
(define-const var3287 String (getName/-1244095687 var1661)) ; Statement: $r45 = virtualinvoke $r44.<org.apache.ibatis.binding.MapperMethod$SqlCommand: java.lang.String getName()>() 
(assert true)
(define-const var1790 String (append/672562846 var1288 var3287)) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r45) 
(declare-const var1288!1 String)
(assert (= var1288!1 (str.++ var1288 var3287)))
(assert true)
(define-const var43 String (toString/-2075883882 var1790)) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1937591867 var2746 var43)) ; Statement: specialinvoke $r42.<org.apache.ibatis.binding.BindingException: void <init>(java.lang.String)>($r48) 

(declare-const var2746!1 var3680)
(declare-const var43!1 String)
 ; Statement: throw $r42 
(check-sat)
(get-model)
(get-unsat-core)
; {command/-72260659=([org.apache.ibatis.binding.MapperMethod], org.apache.ibatis.binding.MapperMethod$SqlCommand), getType/1983465590=([org.apache.ibatis.binding.MapperMethod$SqlCommand], org.apache.ibatis.mapping.SqlCommandType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var652-to-var1124=([org.apache.ibatis.mapping.SqlCommandType], java.lang.Enum), var3680-init=([], org.apache.ibatis.binding.BindingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1244095687=([org.apache.ibatis.binding.MapperMethod$SqlCommand], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1937591867=([org.apache.ibatis.binding.BindingException, java.lang.String], void)}
; {var2408=org.apache.ibatis.binding.MapperMethod, var1527=r0, var1524=org.apache.ibatis.session.SqlSession, var3702=r4, var1860=java.lang.Object, var1459=r24, var74=org.apache.ibatis.binding.MapperMethod$1, var3037=$r2, var2596=org.apache.ibatis.binding.MapperMethod$SqlCommand, var887=$r1, var652=org.apache.ibatis.mapping.SqlCommandType, var2823=$r3, var1124=java.lang.Enum, var2588=$i0, var1838=$i1, var3680=org.apache.ibatis.binding.BindingException, var2746=$r42, var893=$r43, var1288=$r46, var1661=$r44, var3287=$r45, var1790=$r47, var43=$r48}
; {org.apache.ibatis.binding.MapperMethod=var2408, r0=var1527, org.apache.ibatis.session.SqlSession=var1524, r4=var3702, java.lang.Object=var1860, r24=var1459, org.apache.ibatis.binding.MapperMethod$1=var74, $r2=var3037, org.apache.ibatis.binding.MapperMethod$SqlCommand=var2596, $r1=var887, org.apache.ibatis.mapping.SqlCommandType=var652, $r3=var2823, java.lang.Enum=var1124, $i0=var2588, $i1=var1838, org.apache.ibatis.binding.BindingException=var3680, $r42=var2746, $r43=var893, $r46=var1288, $r44=var1661, $r45=var3287, $r47=var1790, $r48=var43}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.binding.MapperMethod;	r4 := @parameter0: org.apache.ibatis.session.SqlSession;	r24 := @parameter1: java.lang.Object[];	$r2 = <org.apache.ibatis.binding.MapperMethod$1: int[] $SwitchMap$org$apache$ibatis$mapping$SqlCommandType>;	$r1 = r0.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$SqlCommand command>;	$r3 = virtualinvoke $r1.<org.apache.ibatis.binding.MapperMethod$SqlCommand: org.apache.ibatis.mapping.SqlCommandType getType()>();	$i0 = virtualinvoke $r3.<org.apache.ibatis.mapping.SqlCommandType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r39 = r0.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$MethodSignature method>;     case 2: goto $r36 = r0.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$MethodSignature method>;     case 3: goto $r33 = r0.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$MethodSignature method>;     case 4: goto $r20 = r0.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$MethodSignature method>;     case 5: goto r50 = interfaceinvoke r4.<org.apache.ibatis.session.SqlSession: java.util.List flushStatements()>();     default: goto $r42 = new org.apache.ibatis.binding.BindingException; };	$r42 = new org.apache.ibatis.binding.BindingException;	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r46 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown execution method for: ");	$r44 = r0.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$SqlCommand command>;	$r45 = virtualinvoke $r44.<org.apache.ibatis.binding.MapperMethod$SqlCommand: java.lang.String getName()>();	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r45);	$r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r42.<org.apache.ibatis.binding.BindingException: void <init>(java.lang.String)>($r48);	throw $r42
;block_num 2