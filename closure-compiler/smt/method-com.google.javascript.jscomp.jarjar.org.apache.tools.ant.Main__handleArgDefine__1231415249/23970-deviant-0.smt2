(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3937 0)
(declare-sort var2961 0)
(declare-sort var3574 0)
(declare-sort var1778 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun definedProps/1023218296 (var3937) var2961)
(declare-fun put/1981026245 (var3574 var1778 var1778) var1778)
(declare-fun cast-from-var2961-to-var3574 (var2961) var3574)
(declare-fun cast-from-String-to-var1778 (String) var1778)
(declare-const null-var3937 var3937)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Int Int)
(declare-const var1539 var3937) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main 
(assert (not (= var1539 null-var3937)))
(declare-const var1491 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var1491 null-__Array__Int__String__)))
(declare-const var3163 Int) ; Statement: i4 := @parameter1: int 
(assert (not (= var3163 null-Int)))
(define-const var3377 String (select var1491 var3163)) ; Statement: r1 = r0[i4] 
(assert (not (and true (and (>= 2 0) (>= (str.len var3377) 2)))))
(check-sat)
(get-model)
(get-unsat-core)
; {substring/850833817=([java.lang.String, int], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), definedProps/1023218296=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main], java.util.Properties), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var2961-to-var3574=([java.util.Properties], java.util.Hashtable), cast-from-String-to-var1778=([java.lang.String], java.lang.Object)}
; {var3937=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main, var1539=r7, var1491=r0, var3163=i4, var3377=r1, var2788=r9, var3493=i0, var2507=$i3, var1088=r10, var2961=java.util.Properties, var1395=$r8, var3574=java.util.Hashtable, var1778=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main=var3937, r7=var1539, r0=var1491, i4=var3163, r1=var3377, r9=var2788, i0=var3493, $i3=var2507, r10=var1088, java.util.Properties=var2961, $r8=var1395, java.util.Hashtable=var3574, java.lang.Object=var1778}
;seq <java.lang.String: java.lang.String substring(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 2,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main;	r0 := @parameter0: java.lang.String[];	i4 := @parameter1: int;	r1 = r0[i4];	r9 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(2);	i0 = virtualinvoke r9.<java.lang.String: int indexOf(int)>(61);	if i0 <= 0 goto $i1 = lengthof r0;	$i3 = i0 + 1;	r10 = virtualinvoke r9.<java.lang.String: java.lang.String substring(int)>($i3);	r9 = virtualinvoke r9.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	goto [?= $r8 = r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: java.util.Properties definedProps>];	$r8 = r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: java.util.Properties definedProps>;	virtualinvoke $r8.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>(r9, r10);	return i4
;block_num 3