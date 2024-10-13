(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3442 0)
(declare-sort var3909 0)
(declare-sort var3299 0)
(declare-sort var1704 0)
(declare-sort var1017 0)
(declare-sort var1414 0)
(declare-sort var3113 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3299_builder/-1909122123 () var3909)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var1704_addOrGet/-330268851 (String) String)
(declare-fun add/-32866407 (var3909 var1017) var3909)
(declare-fun cast-from-String-to-var1017 (String) var1017)
(declare-fun build/-319551664 (var3909) var3299)
(declare-fun var1414-init () var1414)
(declare-fun size/-481607991 (var3113) Int)
(declare-fun cast-from-var3299-to-var3113 (var3299) var3113)
(declare-fun <init>/-2005508873 (var1414 var3299 Int) void)
(declare-const null-String String)
(declare-const var1114 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1114 null-String)))
(define-const var2731 Int 0) ; Statement: i3 = 0 
(define-const var3162 var3909 var3299_builder/-1909122123) ; Statement: r0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder builder()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2736 Int (indexOf/1426977840 var1114 46 var2731)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int indexOf(int,int)>(46, i3) 
(define-const var234 Int var2731) ; Statement: $i2 = i3 
 ; Statement: if $i0 >= 0 goto $i4 = $i0 
(assert (not (>= var2736 0))) ; Negate: Cond: $i0 >= 0  
(assert true)
(define-const var2216 Int (length/-134980193 var1114)) ; Statement: $i4 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: goto [?= $r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i2, $i4)] 
(assert true) ; Non Conditional
(assert (and true (and (>= var234 0) (>= (str.len var1114) var2216) (>= var2216 var234))))
(define-const var2073 String (substring/-1240304868 var1114 var234 var2216)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i2, $i4) 
(define-const var393 String (var1704_addOrGet/-330268851 var2073)) ; Statement: $r2 = staticinvoke <com.google.javascript.rhino.RhinoStringPool: java.lang.String addOrGet(java.lang.String)>($r4) 
(assert true)
;(assert (add/-32866407 var3162 (cast-from-String-to-var1017 var393))) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder add(java.lang.Object)>($r2) 

(declare-const var3162!1 var3909)
(declare-const var393!1 String)
(define-const var2731!1 Int (+ var2736 1)) ; Statement: i3 = $i0 + 1 
 ; Statement: if $i0 >= 0 goto $i0 = virtualinvoke r1.<java.lang.String: int indexOf(int,int)>(46, i3) 
(assert (not (>= var2736 0))) ; Negate: Cond: $i0 >= 0  
(assert true)
(define-const var1672 var3299 (build/-319551664 var3162!1)) ; Statement: r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList build()>() 
(define-const var2909 var1414 var1414-init) ; Statement: $r3 = new com.google.javascript.rhino.QualifiedName$StringListQname 
(assert true)
(define-const var2388 Int (size/-481607991 (cast-from-var3299-to-var3113 var1672))) ; Statement: $i1 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int size()>() 
(assert true)
;(assert (<init>/-2005508873 var2909 var1672 var2388)) ; Statement: specialinvoke $r3.<com.google.javascript.rhino.QualifiedName$StringListQname: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList,int)>(r5, $i1) 

(declare-const var2909!1 var1414)
(declare-const var1672!1 var3299)
(declare-const var2388!1 Int)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3299_builder/-1909122123=([], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder), indexOf/1426977840=([java.lang.String, int, int], int), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var1704_addOrGet/-330268851=([java.lang.String], java.lang.String), add/-32866407=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder), cast-from-String-to-var1017=([java.lang.String], java.lang.Object), build/-319551664=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), var1414-init=([], com.google.javascript.rhino.QualifiedName$StringListQname), size/-481607991=([java.util.AbstractCollection], int), cast-from-var3299-to-var3113=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.util.AbstractCollection), <init>/-2005508873=([com.google.javascript.rhino.QualifiedName$StringListQname, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, int], void)}
; {var1114=r1, var3442=null_type, var2731=i3, var3909=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder, var3299=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3162=r0, var2736=$i0, var234=$i2, var2216=$i4, var2073=$r4, var1704=com.google.javascript.rhino.RhinoStringPool, var393=$r2, var1017=java.lang.Object, var1672=r5, var1414=com.google.javascript.rhino.QualifiedName$StringListQname, var2909=$r3, var3113=java.util.AbstractCollection, var2388=$i1}
; {r1=var1114, null_type=var3442, i3=var2731, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder=var3909, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3299, r0=var3162, $i0=var2736, $i2=var234, $i4=var2216, $r4=var2073, com.google.javascript.rhino.RhinoStringPool=var1704, $r2=var393, java.lang.Object=var1017, r5=var1672, com.google.javascript.rhino.QualifiedName$StringListQname=var1414, $r3=var2909, java.util.AbstractCollection=var3113, $i1=var2388}
;seq <java.lang.String: int indexOf(int,int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int,int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	i3 = 0;	r0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder builder()>();	$i0 = virtualinvoke r1.<java.lang.String: int indexOf(int,int)>(46, i3);	$i2 = i3;	if $i0 >= 0 goto $i4 = $i0;	$i4 = virtualinvoke r1.<java.lang.String: int length()>();	goto [?= $r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i2, $i4)];	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i2, $i4);	$r2 = staticinvoke <com.google.javascript.rhino.RhinoStringPool: java.lang.String addOrGet(java.lang.String)>($r4);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder add(java.lang.Object)>($r2);	i3 = $i0 + 1;	if $i0 >= 0 goto $i0 = virtualinvoke r1.<java.lang.String: int indexOf(int,int)>(46, i3);	r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList build()>();	$r3 = new com.google.javascript.rhino.QualifiedName$StringListQname;	$i1 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int size()>();	specialinvoke $r3.<com.google.javascript.rhino.QualifiedName$StringListQname: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList,int)>(r5, $i1);	return $r3
;block_num 5