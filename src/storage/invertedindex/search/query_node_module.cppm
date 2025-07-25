//  Copyright(C) 2023 InfiniFlow, Inc. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      https://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

module;

#include "query_node.h"

export module query_node;

namespace infinity {

export using infinity::QueryNodeType;
export using infinity::QueryNodeTypeToString;
export using infinity::CreateSearchParams;
export using infinity::QueryNode;
export using infinity::TermQueryNode;
export using infinity::MultiQueryNode;
export using infinity::AndQueryNode;
export using infinity::AndNotQueryNode;
export using infinity::OrQueryNode;
export using infinity::NotQueryNode;
export using infinity::PhraseQueryNode;
export using infinity::RankFeaturesQueryNode;
export using infinity::KeywordQueryNode;
export using infinity::RankFeatureQueryNode;

// unimplemented
// export using infinity::WandQueryNode;
// export using infinity::PrefixTermQueryNode;
// export using infinity::SuffixTermQueryNode;
// export using infinity::SubstringTermQueryNode;

} // namespace infinity
