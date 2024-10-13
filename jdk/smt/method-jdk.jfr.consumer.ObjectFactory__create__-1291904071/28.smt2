(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1931 0)
(declare-sort var2060 0)
(declare-sort var2948 0)
(declare-sort var1286 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-2081927433 (var1931) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1286_createFactory/1694801807 (var1931 var2060) var2948)
(declare-const null-var1931 var1931)
(declare-const null-var2060 var2060)
(declare-const var142 var1931) ; Statement: r0 := @parameter0: jdk.jfr.internal.Type 
(assert (not (= var142 null-var1931)))
(declare-const var3917 var2060) ; Statement: r2 := @parameter1: jdk.jfr.consumer.TimeConverter 
(assert (not (= var3917 null-var2060)))
(assert true)
(define-const var699 String (getName/-2081927433 var142)) ; Statement: r1 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(define-const var1660 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2099 Int (hashCode/-467973558 var699)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1521454505: goto $z11 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.StackFrame");     case -1508525521: goto $z10 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.StackTrace");     case -1461342917: goto $z9 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.ClassLoader");     case -1279061901: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.Method");     case -1189480395: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.StackFrame");     case -1176551411: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.StackTrace");     case -530663260: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Class");     case -295970237: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.ThreadGroup");     case 1132361561: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.ClassLoader");     case 1212802142: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Thread");     case 1405292581: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.ThreadGroup");     case 1501967697: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.Method");     default: goto tableswitch(b1) {     case 0: goto $r9 = staticinvoke <jdk.jfr.consumer.RecordedThread: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 1: goto $r8 = staticinvoke <jdk.jfr.consumer.RecordedFrame: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 2: goto $r8 = staticinvoke <jdk.jfr.consumer.RecordedFrame: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 3: goto $r7 = staticinvoke <jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 4: goto $r7 = staticinvoke <jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 5: goto $r6 = staticinvoke <jdk.jfr.consumer.RecordedThreadGroup: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 6: goto $r6 = staticinvoke <jdk.jfr.consumer.RecordedThreadGroup: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 7: goto $r5 = staticinvoke <jdk.jfr.consumer.RecordedStackTrace: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 8: goto $r5 = staticinvoke <jdk.jfr.consumer.RecordedStackTrace: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 9: goto $r4 = staticinvoke <jdk.jfr.consumer.RecordedClassLoader: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 10: goto $r4 = staticinvoke <jdk.jfr.consumer.RecordedClassLoader: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 11: goto $r3 = staticinvoke <jdk.jfr.consumer.RecordedClass: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     default: goto return null; }; } 
(assert (and (not (= var2099 1501967697)) (and (not (= var2099 1405292581)) (and (not (= var2099 1212802142)) (and (not (= var2099 1132361561)) (and (not (= var2099 (- 295970237))) (and (not (= var2099 (- 530663260))) (and (not (= var2099 (- 1176551411))) (and (not (= var2099 (- 1189480395))) (and (not (= var2099 (- 1279061901))) (and (not (= var2099 (- 1461342917))) (and (not (= var2099 (- 1508525521))) (and (not (= var2099 (- 1521454505))) true))))))))))))) ; Intersect: Negate: Cond: $i0 == 1501967697   and Intersect: Negate: Cond: $i0 == 1405292581   and Intersect: Negate: Cond: $i0 == 1212802142   and Intersect: Negate: Cond: $i0 == 1132361561   and Intersect: Negate: Cond: $i0 == -295970237   and Intersect: Negate: Cond: $i0 == -530663260   and Intersect: Negate: Cond: $i0 == -1176551411   and Intersect: Negate: Cond: $i0 == -1189480395   and Intersect: Negate: Cond: $i0 == -1279061901   and Intersect: Negate: Cond: $i0 == -1461342917   and Intersect: Negate: Cond: $i0 == -1508525521   and Intersect: Negate: Cond: $i0 == -1521454505   and Non Conditional            
 ; Statement: tableswitch(b1) {     case 0: goto $r9 = staticinvoke <jdk.jfr.consumer.RecordedThread: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 1: goto $r8 = staticinvoke <jdk.jfr.consumer.RecordedFrame: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 2: goto $r8 = staticinvoke <jdk.jfr.consumer.RecordedFrame: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 3: goto $r7 = staticinvoke <jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 4: goto $r7 = staticinvoke <jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 5: goto $r6 = staticinvoke <jdk.jfr.consumer.RecordedThreadGroup: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 6: goto $r6 = staticinvoke <jdk.jfr.consumer.RecordedThreadGroup: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 7: goto $r5 = staticinvoke <jdk.jfr.consumer.RecordedStackTrace: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 8: goto $r5 = staticinvoke <jdk.jfr.consumer.RecordedStackTrace: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 9: goto $r4 = staticinvoke <jdk.jfr.consumer.RecordedClassLoader: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 10: goto $r4 = staticinvoke <jdk.jfr.consumer.RecordedClassLoader: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 11: goto $r3 = staticinvoke <jdk.jfr.consumer.RecordedClass: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     default: goto return null; } 
(assert (and (= var1660 3) (and (not (= var1660 2)) (and (not (= var1660 1)) (and (not (= var1660 0)) true))))) ; Intersect: Cond: b1 == 3  and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional    
(define-const var1398 var2948 (var1286_createFactory/1694801807 var142 var3917)) ; Statement: $r7 = staticinvoke <jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-2081927433=([jdk.jfr.internal.Type], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1286_createFactory/1694801807=([jdk.jfr.internal.Type, jdk.jfr.consumer.TimeConverter], jdk.jfr.consumer.ObjectFactory)}
; {var1931=jdk.jfr.internal.Type, var142=r0, var2060=jdk.jfr.consumer.TimeConverter, var3917=r2, var699=r1, var1660=b1, var2099=$i0, var2948=jdk.jfr.consumer.ObjectFactory, var1286=jdk.jfr.consumer.RecordedMethod, var1398=$r7}
; {jdk.jfr.internal.Type=var1931, r0=var142, jdk.jfr.consumer.TimeConverter=var2060, r2=var3917, r1=var699, b1=var1660, $i0=var2099, jdk.jfr.consumer.ObjectFactory=var2948, jdk.jfr.consumer.RecordedMethod=var1286, $r7=var1398}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: jdk.jfr.internal.Type;	r2 := @parameter1: jdk.jfr.consumer.TimeConverter;	r1 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>();	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1521454505: goto $z11 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.StackFrame");     case -1508525521: goto $z10 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.StackTrace");     case -1461342917: goto $z9 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.ClassLoader");     case -1279061901: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.Method");     case -1189480395: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.StackFrame");     case -1176551411: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.StackTrace");     case -530663260: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Class");     case -295970237: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.ThreadGroup");     case 1132361561: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.ClassLoader");     case 1212802142: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Thread");     case 1405292581: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.ThreadGroup");     case 1501967697: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.Method");     default: goto tableswitch(b1) {     case 0: goto $r9 = staticinvoke <jdk.jfr.consumer.RecordedThread: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 1: goto $r8 = staticinvoke <jdk.jfr.consumer.RecordedFrame: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 2: goto $r8 = staticinvoke <jdk.jfr.consumer.RecordedFrame: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 3: goto $r7 = staticinvoke <jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 4: goto $r7 = staticinvoke <jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 5: goto $r6 = staticinvoke <jdk.jfr.consumer.RecordedThreadGroup: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 6: goto $r6 = staticinvoke <jdk.jfr.consumer.RecordedThreadGroup: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 7: goto $r5 = staticinvoke <jdk.jfr.consumer.RecordedStackTrace: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 8: goto $r5 = staticinvoke <jdk.jfr.consumer.RecordedStackTrace: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 9: goto $r4 = staticinvoke <jdk.jfr.consumer.RecordedClassLoader: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 10: goto $r4 = staticinvoke <jdk.jfr.consumer.RecordedClassLoader: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 11: goto $r3 = staticinvoke <jdk.jfr.consumer.RecordedClass: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     default: goto return null; }; };	tableswitch(b1) {     case 0: goto $r9 = staticinvoke <jdk.jfr.consumer.RecordedThread: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 1: goto $r8 = staticinvoke <jdk.jfr.consumer.RecordedFrame: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 2: goto $r8 = staticinvoke <jdk.jfr.consumer.RecordedFrame: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 3: goto $r7 = staticinvoke <jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 4: goto $r7 = staticinvoke <jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 5: goto $r6 = staticinvoke <jdk.jfr.consumer.RecordedThreadGroup: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 6: goto $r6 = staticinvoke <jdk.jfr.consumer.RecordedThreadGroup: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 7: goto $r5 = staticinvoke <jdk.jfr.consumer.RecordedStackTrace: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 8: goto $r5 = staticinvoke <jdk.jfr.consumer.RecordedStackTrace: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 9: goto $r4 = staticinvoke <jdk.jfr.consumer.RecordedClassLoader: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 10: goto $r4 = staticinvoke <jdk.jfr.consumer.RecordedClassLoader: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 11: goto $r3 = staticinvoke <jdk.jfr.consumer.RecordedClass: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     default: goto return null; };	$r7 = staticinvoke <jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);	return $r7
;block_num 3