(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var386 0)
(declare-sort var2460 0)
(declare-sort var624 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun var624-init () var624)
(declare-fun <init>/2061273758 (var624 String) void)
(declare-fun getLength-Arr-var2460-1 ((Array Int var2460)) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun add/-1632356646 (var624 String var2460) var624)
(declare-fun render/-941257581 (var624 Int) String)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__var2460__ (Array Int var2460))
(declare-const var2239 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var2239 null-Int)))
(declare-const var3524 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var3524 null-String)))
(declare-const var45 (Array Int var2460)) ; Statement: r1 := @parameter2: java.lang.Object[] 
(assert (not (= var45 null-__Array__Int__var2460__)))
(assert true)
(define-const var1652 String (replaceAll/1692887130 var3524 "%([0-9]+)" "arg$1")) ; Statement: r9 = virtualinvoke r8.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("%([0-9]+)", "arg$1") 
(assert (= (replaceAll/1692887130 var3524 "%([0-9]+)" "arg$1") (str.replace_re_all var3524 (re.++ (str.to_re "%") (re.+ (re.range "0" "9"))) "arg$1")))
(define-const var29 var624 var624-init) ; Statement: $r0 = new org.stringtemplate.v4.ST 
(assert true)
;(assert (<init>/2061273758 var29 var1652)) ; Statement: specialinvoke $r0.<org.stringtemplate.v4.ST: void <init>(java.lang.String)>(r9) 

(declare-const var29!1 var624)
(declare-const var1652!1 String)
(define-const var42 Int 1) ; Statement: i2 = 1 
(define-const var758 Int (getLength-Arr-var2460-1 var45)) ; Statement: i0 = lengthof r1 
(define-const var1174 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r2 = virtualinvoke $r0.<org.stringtemplate.v4.ST: java.lang.String render(int)>(i1) 
(assert (not (>= var1174 var758))) ; Negate: Cond: i3 >= i0  
(define-const var2441 var2460 (select var45 var1174)) ; Statement: r3 = r1[i3] 
(define-const var3617 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3617)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3617!1 String)
(assert (= var3617!1 ""))
(assert true)
(define-const var2829 String (append/672562846 var3617!1 "arg")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("arg") 
(declare-const var3617!2 String)
(assert (= var3617!2 (str.++ var3617!1 "arg")))
(assert true)
(define-const var3869 String (append/-1001720160 var2829 var42)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var2829!1 String)
(assert (str.prefixof var2829 var2829!1))
(assert true)
(define-const var520 String (toString/-2075883882 var3869)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/-1632356646 var29!1 var520 var2441)) ; Statement: virtualinvoke $r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.ST add(java.lang.String,java.lang.Object)>($r7, r3) 

(declare-const var29!2 var624)
(declare-const var520!1 String)
(declare-const var2441!1 var2460)
(define-const var42!1 Int (+ var42 1)) ; Statement: i2 = i2 + 1 
(define-const var1174!1 Int (+ var1174 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r2 = virtualinvoke $r0.<org.stringtemplate.v4.ST: java.lang.String render(int)>(i1) 
(assert (>= var1174!1 var758)) ; Cond: i3 >= i0 
(assert true)
(define-const var3197 String (render/-941257581 var29!2 var2239)) ; Statement: $r2 = virtualinvoke $r0.<org.stringtemplate.v4.ST: java.lang.String render(int)>(i1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), var624-init=([], org.stringtemplate.v4.ST), <init>/2061273758=([org.stringtemplate.v4.ST, java.lang.String], void), getLength-Arr-var2460-1=([java.lang.Object[]], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), add/-1632356646=([org.stringtemplate.v4.ST, java.lang.String, java.lang.Object], org.stringtemplate.v4.ST), render/-941257581=([org.stringtemplate.v4.ST, int], java.lang.String)}
; {var2239=i1, var3524=r8, var386=null_type, var2460=java.lang.Object, var45=r1, var1652=r9, var624=org.stringtemplate.v4.ST, var29=$r0, var42=i2, var758=i0, var1174=i3, var2441=r3, var3617=$r4, var2829=$r5, var3869=$r6, var520=$r7, var3197=$r2}
; {i1=var2239, r8=var3524, null_type=var386, java.lang.Object=var2460, r1=var45, r9=var1652, org.stringtemplate.v4.ST=var624, $r0=var29, i2=var42, i0=var758, i3=var1174, r3=var2441, $r4=var3617, $r5=var2829, $r6=var3869, $r7=var520, $r2=var3197}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i1 := @parameter0: int;	r8 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.Object[];	r9 = virtualinvoke r8.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("%([0-9]+)", "arg$1");	$r0 = new org.stringtemplate.v4.ST;	specialinvoke $r0.<org.stringtemplate.v4.ST: void <init>(java.lang.String)>(r9);	i2 = 1;	i0 = lengthof r1;	i3 = 0;	if i3 >= i0 goto $r2 = virtualinvoke $r0.<org.stringtemplate.v4.ST: java.lang.String render(int)>(i1);	r3 = r1[i3];	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("arg");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.ST add(java.lang.String,java.lang.Object)>($r7, r3);	i2 = i2 + 1;	i3 = i3 + 1;	goto [?= (branch)];	if i3 >= i0 goto $r2 = virtualinvoke $r0.<org.stringtemplate.v4.ST: java.lang.String render(int)>(i1);	$r2 = virtualinvoke $r0.<org.stringtemplate.v4.ST: java.lang.String render(int)>(i1);	return $r2
;block_num 5