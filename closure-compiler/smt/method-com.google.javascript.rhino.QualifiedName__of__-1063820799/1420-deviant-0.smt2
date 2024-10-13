(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3447 0)
(declare-sort var385 0)
(declare-sort var1934 0)
(declare-sort var1218 0)
(declare-sort var1736 0)
(declare-sort var22 0)
(declare-sort var3156 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1934_builder/-1909122123 () var385)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var1218_addOrGet/-330268851 (String) String)
(declare-fun add/-32866407 (var385 var1736) var385)
(declare-fun cast-from-String-to-var1736 (String) var1736)
(declare-fun build/-319551664 (var385) var1934)
(declare-fun var22-init () var22)
(declare-fun size/-481607991 (var3156) Int)
(declare-fun cast-from-var1934-to-var3156 (var1934) var3156)
(declare-fun <init>/-2005508873 (var22 var1934 Int) void)
(declare-const null-String String)
(declare-const var335 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var335 null-String)))
(define-const var350 Int 0) ; Statement: i3 = 0 
(define-const var2518 var385 var1934_builder/-1909122123) ; Statement: r0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder builder()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var912 Int (indexOf/1426977840 var335 46 var350)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int indexOf(int,int)>(46, i3) 
(define-const var2143 Int var350) ; Statement: $i2 = i3 
 ; Statement: if $i0 >= 0 goto $i4 = $i0 
(assert (>= var912 0)) ; Cond: $i0 >= 0 
(define-const var3190 Int var912) ; Statement: $i4 = $i0 
(assert true) ; Non Conditional
(assert (not (and true (and (>= var2143 0) (>= (str.len var335) var3190) (>= var3190 var2143)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var1934_builder/-1909122123=([], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder), indexOf/1426977840=([java.lang.String, int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var1218_addOrGet/-330268851=([java.lang.String], java.lang.String), add/-32866407=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder), cast-from-String-to-var1736=([java.lang.String], java.lang.Object), build/-319551664=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), var22-init=([], com.google.javascript.rhino.QualifiedName$StringListQname), size/-481607991=([java.util.AbstractCollection], int), cast-from-var1934-to-var3156=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.util.AbstractCollection), <init>/-2005508873=([com.google.javascript.rhino.QualifiedName$StringListQname, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, int], void)}
; {var335=r1, var3447=null_type, var350=i3, var385=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder, var1934=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2518=r0, var912=$i0, var2143=$i2, var3190=$i4, var2489=$r4, var1218=com.google.javascript.rhino.RhinoStringPool, var3167=$r2, var1736=java.lang.Object, var2635=r5, var22=com.google.javascript.rhino.QualifiedName$StringListQname, var2262=$r3, var3156=java.util.AbstractCollection, var3547=$i1}
; {r1=var335, null_type=var3447, i3=var350, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder=var385, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1934, r0=var2518, $i0=var912, $i2=var2143, $i4=var3190, $r4=var2489, com.google.javascript.rhino.RhinoStringPool=var1218, $r2=var3167, java.lang.Object=var1736, r5=var2635, com.google.javascript.rhino.QualifiedName$StringListQname=var22, $r3=var2262, java.util.AbstractCollection=var3156, $i1=var3547}
;seq <java.lang.String: int indexOf(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int,int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	i3 = 0;	r0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder builder()>();	$i0 = virtualinvoke r1.<java.lang.String: int indexOf(int,int)>(46, i3);	$i2 = i3;	if $i0 >= 0 goto $i4 = $i0;	$i4 = $i0;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i2, $i4);	$r2 = staticinvoke <com.google.javascript.rhino.RhinoStringPool: java.lang.String addOrGet(java.lang.String)>($r4);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder add(java.lang.Object)>($r2);	i3 = $i0 + 1;	if $i0 >= 0 goto $i0 = virtualinvoke r1.<java.lang.String: int indexOf(int,int)>(46, i3);	r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList build()>();	$r3 = new com.google.javascript.rhino.QualifiedName$StringListQname;	$i1 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int size()>();	specialinvoke $r3.<com.google.javascript.rhino.QualifiedName$StringListQname: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList,int)>(r5, $i1);	return $r3
;block_num 5