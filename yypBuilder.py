import json
import os
import uuid
import copy

template = {
    "Key": "",
    "Value": {
        "id": "",
        "resourcePath": "",
        "resourceType": ""
    }
}

yyp = {
  "id": "f5aec41e-958c-476f-8711-22038ebbe430",
  "modelName": "GMProject",
  "mvc": "1.0",
  "IsDnDProject": False,
  "configs": [],
  "option_ecma": False,
  "parentProject": {
      "id": "90cce556-ecb9-4649-acef-43df54b729ba",
      "modelName": "GMProjectParent",
      "mvc": "1.0",
      "alteredResources": [
          {
              "Key": "ed6a955d-5826-4f98-a450-10b414266c27",
              "Value": {
                  "configDeltas": [],
                  "id": "532b460b-cf07-45b2-9df1-e116892dad05",
                  "resourcePath": "options\\main\\options_main.yy",
                  "resourceType": "GMMainOptions"
              }
          }
      ],
      "hiddenResources": [],
      "projectPath": "${base_project}"
  },
  "resources": []
}

for root, dirs, files in os.walk('./'):
  for f in files:
    if f.endswith('.yy'):
      if '.inherited.yy' in f or '.old.yy' in f:
        continue
      try:
        yy = json.loads(open(os.path.join(root, f), 'r', encoding='utf-8').read())
      except:
        continue
      newKey = copy.deepcopy(template)
      newKey['Key'] = yy['id']
      newKey['Value']['id'] = str(uuid.uuid4())
      newKey['Value']['resourcePath'] = os.path.join(root, f).replace('./', '')
      newKey['Value']['resourceType'] = yy['modelName']
      yyp['resources'].append(newKey)

l = []
for key in yyp['resources']:
  if key['Key'] in l:
    print(key)
  l.append(key['Key'])

json.dump(yyp, open('NAC.yyp', 'w'), indent=2)