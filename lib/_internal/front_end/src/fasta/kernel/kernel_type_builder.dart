// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library fasta.kernel_type_builder;

import 'package:compiler_unsupported/_internal/kernel/ast.dart' show DartType, Supertype;

import 'kernel_builder.dart' show LibraryBuilder, TypeBuilder;

abstract class KernelTypeBuilder extends TypeBuilder {
  KernelTypeBuilder(int charOffset, Uri fileUri) : super(charOffset, fileUri);

  DartType build(LibraryBuilder library);

  Supertype buildSupertype(LibraryBuilder library);
}
